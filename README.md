# ForkwellCop

[![Gem Version](https://badge.fury.io/rb/forkwell_cop.svg)](https://badge.fury.io/rb/forkwell_cop)
[![Build Status](https://travis-ci.org/grooves/forkwell_cop.svg?branch=master)](https://travis-ci.org/grooves/forkwell_cop)

RuboCop configration in [Forkwell](https://forkwell.com). Inspired by [onkcop](https://github.com/onk/onkcop).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'forkwell_cop', require: false
```

## Usage

Put this into your `.rubocop.yml`:

```yml
inherit_gem:
  forkwell_cop:
    - 'config/default.yml'
```

And then execute:

```
bundle exec rubocop
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/grooves/forkwell_cop.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
