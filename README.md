# xcpretty-azure-formatter

![Build](https://github.com/lasseporsch/xcpretty-azure-formatter/actions/workflows/main.yml/badge.svg) [![Gem Version](https://badge.fury.io/rb/xcpretty-azure-formatter.svg)](https://badge.fury.io/rb/xcpretty-azure-formatter)

This xcpretty formatter produces additional [Azure Pipelines LogIssue](https://docs.microsoft.com/en-us/azure/devops/pipelines/scripts/logging-commands?view=azure-devops&tabs=bash#logissue-log-an-error-or-warning) commands so xcodebuild errors and warnigns can be reported to the Azure Pipeline environment.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcpretty-azure-formatter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install xcpretty_azure_formatter

## Usage

Simply specify the azure formatter when using `xcpretty`. Be sure to use back-ticks. For more details see the [xcpretty documentation](https://github.com/xcpretty/xcpretty#extensions)
```bash
$ xcodebuild [args] build | xcpretty -f `xcpretty-azure-formatter` 
```
This will retain the original output of xcpretty, except for the following message categories which will be replaced by Azure-friendly output:
- General warnings and errors
- Compiler warnings and errors
- Linker warnings
- File Missing errors
- Undefined Symbols errors
- Duplicate Symbols errors

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/xcpretty_azure_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/xcpretty_azure_formatter/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the XcprettyAzureFormatter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/xcpretty_azure_formatter/blob/master/CODE_OF_CONDUCT.md).
