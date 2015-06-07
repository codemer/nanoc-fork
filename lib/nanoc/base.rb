module Nanoc
  require 'nanoc/base/core_ext'

  autoload 'Error',                'nanoc/base/error'
  autoload 'DataSource',           'nanoc/base/source_data/data_source'
  autoload 'Filter',               'nanoc/base/compilation/filter'
end

# @api private
module Nanoc::Int
  require_relative 'base/item_rep_writer'

  # Load helper classes
  autoload 'Context',              'nanoc/base/context'
  autoload 'Checksummer',          'nanoc/base/checksummer'
  autoload 'DirectedGraph',        'nanoc/base/directed_graph'
  autoload 'Errors',               'nanoc/base/errors'
  autoload 'Memoization',          'nanoc/base/memoization'
  autoload 'NotificationCenter',   'nanoc/base/notification_center'
  autoload 'PluginRegistry',       'nanoc/base/plugin_registry'
  autoload 'Store',                'nanoc/base/store'
  autoload 'TempFilenameFactory',  'nanoc/base/temp_filename_factory'
  autoload 'IdentifiableCollection', 'nanoc/base/identifiable_collection'

  # Load source data classes
  autoload 'CodeSnippet',          'nanoc/base/source_data/code_snippet'
  autoload 'Configuration',        'nanoc/base/source_data/configuration'
  autoload 'Item',                 'nanoc/base/source_data/item'
  autoload 'Site',                 'nanoc/base/source_data/site'

  # Load result data classes
  autoload 'ItemRep',              'nanoc/base/result_data/item_rep'

  # Load compilation classes
  autoload 'ChecksumStore',        'nanoc/base/compilation/checksum_store'
  autoload 'CompiledContentCache', 'nanoc/base/compilation/compiled_content_cache'
  autoload 'Compiler',             'nanoc/base/compilation/compiler'
  autoload 'CompilerDSL',          'nanoc/base/compilation/compiler_dsl'
  autoload 'DependencyTracker',    'nanoc/base/compilation/dependency_tracker'
  autoload 'ItemRepProxy',         'nanoc/base/compilation/item_rep_proxy'
  autoload 'ItemRepRecorderProxy', 'nanoc/base/compilation/item_rep_recorder_proxy'
  autoload 'OutdatednessChecker',  'nanoc/base/compilation/outdatedness_checker'
  autoload 'OutdatednessReasons',  'nanoc/base/compilation/outdatedness_reasons'
  autoload 'Rule',                 'nanoc/base/compilation/rule'
  autoload 'RuleContext',          'nanoc/base/compilation/rule_context'
  autoload 'RuleMemoryCalculator', 'nanoc/base/compilation/rule_memory_calculator'
  autoload 'RuleMemoryStore',      'nanoc/base/compilation/rule_memory_store'
  autoload 'RulesCollection',      'nanoc/base/compilation/rules_collection'
end

require_relative 'base/entities'
require_relative 'base/views'
