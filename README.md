# Jenny

Jenny is a suite of scripts and support tools for generating new modules, gems and vagrant configurations

TODO: Rename project as 'jenny' already exists as an online gem and I bet it'll cause problems if I reuse that name :-(

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jenny'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jenny

## Usage

    jenny vagrant myProject [--fqdn local.network.com]
    jenny help
    jenny help vagrant

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jenny/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Testing

    $ bundle exec cucumber features
    $ bundle exec bin/jenny vagrant
