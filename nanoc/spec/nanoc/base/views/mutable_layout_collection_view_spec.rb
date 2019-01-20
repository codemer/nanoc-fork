# frozen_string_literal: true

require_relative 'support/identifiable_collection_view_examples'
require_relative 'support/mutable_identifiable_collection_view_examples'

describe Nanoc::MutableLayoutCollectionView do
  let(:view_class) { Nanoc::MutableLayoutView }
  let(:collection_class) { Nanoc::Core::LayoutCollection }
  it_behaves_like 'an identifiable collection view'
  it_behaves_like 'a mutable identifiable collection view'

  let(:config) do
    { string_pattern_type: 'glob' }
  end

  describe '#create' do
    let(:layout) do
      Nanoc::Core::Layout.new('content', {}, '/asdf')
    end

    let(:wrapped) do
      Nanoc::Core::LayoutCollection.new(config, [layout])
    end

    let(:view) { described_class.new(wrapped, nil) }

    it 'creates an object' do
      view.create('new content', { title: 'New Page' }, '/new')

      expect(view._unwrap.size).to eq(2)
      expect(view._unwrap['/new'].content.string).to eq('new content')
    end

    it 'does not update wrapped' do
      view.create('new content', { title: 'New Page' }, '/new')

      expect(wrapped.size).to eq(1)
      expect(wrapped['/new']).to be_nil
    end

    it 'returns self' do
      ret = view.create('new content', { title: 'New Page' }, '/new')
      expect(ret).to equal(view)
    end
  end

  describe '#inspect' do
    let(:wrapped) do
      Nanoc::Core::LayoutCollection.new(config)
    end

    let(:view) { described_class.new(wrapped, view_context) }
    let(:view_context) { double(:view_context) }
    let(:config) { { string_pattern_type: 'glob' } }

    subject { view.inspect }

    it { is_expected.to eql('<Nanoc::MutableLayoutCollectionView>') }
  end
end
