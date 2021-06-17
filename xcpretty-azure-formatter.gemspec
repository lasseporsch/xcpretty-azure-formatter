# frozen_string_literal: true

require_relative "lib/xcpretty-azure-formatter/version"

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-azure-formatter"
  spec.version       = XcprettyAzureFormatter::VERSION
  spec.authors       = ["Lasse Porsch"]
  spec.email         = ["lasse.porsch@gmail.com"]

  spec.summary       = "An xcpretty Formatter to report xcodebuild warnings and errors directly to Azure Pipelines"
  spec.description   = "
    This custom XCPretty Formatter converts relevant xcodebuild output into Azure Pipelines logging commands
    (see https://docs.microsoft.com/en-us/azure/devops/pipelines/scripts/logging-commands?view=azure-devops&tabs=bash#logissue-log-an-error-or-warning)
    The Formatter was written with a focus on reporting build warnings and errors to the Azure environment, e.g. in Dashboards.
    "
  spec.homepage      = "https://github.com/lasseporsch/xcpretty-azure-formatter"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lasseporsch/xcpretty-azure-formatter"
  spec.metadata["changelog_uri"] = "https://github.com/lasseporsch/xcpretty-azure-formatter/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = [
    "README.md",
    "LICENSE.txt",
    "lib/xcpretty_azure_formatter.rb",
    "bin/xcpretty-azure-formatter"
  ]
  spec.bindir        = "bin"
  spec.executables   = ["xcpretty-azure-formatter"]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "xcpretty", "~> 0.2", ">= 0.0.7"

  # spec.add_development_dependency 'bundler', '~> 1.11'
  # spec.add_development_dependency 'rake', '~> 10.0'
  # spec.add_development_dependency 'rspec', '~> 3.0'
  # spec.add_development_dependency 'rubocop', '~> 0.38'
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
