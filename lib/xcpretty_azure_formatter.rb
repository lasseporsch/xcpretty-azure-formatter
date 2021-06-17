# frozen_string_literal: true

# xcpretty formatter for Azure Pipelines
class AzureFormatter < XCPretty::Simple
  def format_ld_warning(message)
    _log_issue("warning", message, nil)
    super
  end

  def format_warning(message)
    _log_issue("warning", message, nil)
    super
  end

  def format_compile_warning(file_name, file_path, reason, line, cursor)
    _log_issue("warning", reason, file_path)
    super
  end

  def format_error(message)
    _log_issue("error", message, nil)
    super
  end

  def format_compile_error(file, file_path, reason, line, cursor)
    _log_issue("error", reason, file_path)
    super
  end

  def format_file_missing_error(reason, file_path)
    _log_issue("error", reason, file_path)
    super
  end

  def format_undefined_symbols(message, symbol, reference)
    _log_issue("error", message, nil)
    super
  end

  def format_duplicate_symbols(message, file_paths)
    _log_issue("error", message, nil)
    super
  end

  def _log_issue(type, message, file)
    log_params = "type=#{type}"
    unless file.nil?
      log_params += ";sourcepath=#{file[0]}"
      log_params += ";linenumber=#{file[1]}" if file.length >= 2
      log_params += ";columnnumber=#{file[2]}" if file.length >= 3
      log_params += ";"
    end
    puts "##vso[task.logissue #{log_params}]#{message}"
  end
end

AzureFormatter
