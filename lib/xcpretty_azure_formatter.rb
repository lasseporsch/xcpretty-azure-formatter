# frozen_string_literal: true

# xcpretty formatter for Azure Pipelines
class AzureFormatter < XCPretty::Simple
  def format_ld_warning(message)
    _log_issue("warning", message, nil)
  end

  def format_warning(message)
    _log_issue("warning", message, nil)
  end

  def format_compile_warning(_file_name, file_path, reason, _line, _cursor)
    _log_issue("warning", reason, file_path)
  end

  def format_error(message)
    _log_issue("error", message, nil)
  end

  def format_compile_error(_file, file_path, reason, _line, _cursor)
    _log_issue("error", reason, file_path)
  end

  def format_file_missing_error(reason, file_path)
    _log_issue("error", reason, file_path)
  end

  def format_undefined_symbols(message, _symbol, _reference)
    _log_issue("error", message, nil)
  end

  def format_duplicate_symbols(message, _file_paths)
    _log_issue("error", message, nil)
  end

  def _log_issue(type, message, file)
    log_params = "type=#{type}"
    unless file.nil?
      file_parts = file.split(":")
      log_params += ";sourcepath=#{file_parts[0]}"
      log_params += ";linenumber=#{file_parts[1]}" if file_parts.length >= 2
      log_params += ";columnnumber=#{file_parts[2]}" if file_parts.length >= 3
      log_params += ";"
    end
    "##vso[task.logissue #{log_params}]#{message}"
  end
end

AzureFormatter
