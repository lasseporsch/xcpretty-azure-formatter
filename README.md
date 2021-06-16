# xcpretty-azure-formatter

![Build](https://github.com/lasseporsch/xcpretty-azure-formatter/actions/workflows/main.yml/badge.svg)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/xcpretty_azure_formatter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcpretty_azure_formatter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install xcpretty_azure_formatter

## Usage

Assuming you want to keep the original `xcodebuild` or `xcpretty` output, but <u>also</u> have `xcpretty` report any errors or warnings to Azure, you have two choices for using this formatter:

### Write original output to log file, and print Azure Logging Commands instead
Since you will have to print the Azure Logging Commands anyway at some point to the standard output during a pipeline run, you might do it right away when `xcodebuild` runs, and save the standard output in a log file:
```bash
$ xcodebuild [... all your arguments here...] build | tee xcodebuild-raw.log | xcpretty -f `xcpretty-azure-formatter` 
```

### Keep original output, and write Azure Logging Commands to file





## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/xcpretty_azure_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/xcpretty_azure_formatter/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the XcprettyAzureFormatter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/xcpretty_azure_formatter/blob/master/CODE_OF_CONDUCT.md).
