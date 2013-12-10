# Rgitlog
A Rails engine for drawing your app's git log

## Requirements

- Rails 4.0

## Installation

Gemfile

```ruby
gem 'rgitlog'
```

Then bundle:

```
% bundle
```

config/routes.rb

```ruby
  mount Rgitlog::Engine, at: '/rgitlog'
```

## Usage

Browse at your http://localhost:3000/rgitlog

## Contributing

- Send me your pull requests!

## Copyright
Copyright (c) 2013 Kunihiko ITO. See MIT-LICENSE for further details.
