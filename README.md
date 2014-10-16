# QuickLook

A very simplistic ruby wrapper around QuickLook for OS X.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quick_look'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quick_look

## Usage

```ruby
require 'quick_look'

path = "/some/path/to/a/file.jpg"

QuickLook.open(path)

QuickLook.close(path)
```

## Contributing

1. Fork it ( https://github.com/arronmabrey/quick_look/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
