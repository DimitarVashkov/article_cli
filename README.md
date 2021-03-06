## The project - CLI Data Gem

Basic gem that scrapes information from a news site and displays the information for user that interacts though
a CLI with the application.

The code for the project I felt was a bit easier than the previous Flatiron exercises. The main challenge was setting up the requirements for the project to run and the gem things. I felt completely prepared to finish the project. 

I wanted to continue the trend of using Test-Driven development and tried writting several tests for Article and Newspaper classes. A further improvement can be adding specs for the scraper and the cli. I didn't use class variables as I didn't really find any meaning in using any. The classes were quite simple so there was no need to bring extra complexity when it is not needed.

I'll probably come back to the project after I learn a bit more advanced Ruby concepts. I didn't really use Modules for this project and that's a bit disappointing. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'articlecli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install articlecli

## Usage

From inside the root folder tupe   `./bin/articles` to start a CLI that lets you interact with the application.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dimitarvashkov/articlecli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Articlecli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/dimitarvashkov/articlecli/blob/master/CODE_OF_CONDUCT.md).
