# frozen_string_literal: true

require "fileutils"
require_relative "xcpretty_azure_formatter/version"

# xcpretty formatter for Azure Pipelines
class AzureFormatter < XCPretty::Simple
  def format_ld_warning(message)
    "##vso[task.logissue type=warning]#{message}"
  end

  def format_warning(message)
    "##vso[task.logissue type=warning]#{message}"
  end

  def format_compile_warning(_file_name, file_path, reason, _line, _cursor)
    file_path_parts = file_path.split(":")
    source_path = file_path_parts[0]
    line_number = file_path_parts[1]
    column_number = file_path_parts[2]
    "##vso[task.logissue type=warning;sourcepath=#{source_path};linenumber=#{line_number};columnnumber=#{column_number};]#{reason}"
  end

  def format_error(message)
    "##vso[task.logissue type=error]#{message}"
  end

  def format_compile_error(_file, file_path, reason, _line, _cursor)
    file_path_parts = file_path.split(":")
    source_path = file_path_parts[0]
    line_number = file_path_parts[1]
    column_number = file_path_parts[2]
    "##vso[task.logissue type=error;sourcepath=#{source_path};linenumber=#{line_number};columnnumber=#{column_number};]#{reason}"
  end

  def format_file_missing_error(reason, file_path)
    "##vso[task.logissue type=warning;sourcepath=#{file_path}]#{reason}"
  end

  def format_undefined_symbols(message, _symbol, _reference)
    "##vso[task.logissue type=error;]#{message}"
  end

  def format_duplicate_symbols(message, _file_paths)
    "##vso[task.logissue type=error]#{message}"
  end
end

AzureFormatter
