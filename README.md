# Jenny

Jenny (Short for Generator) is a suite of scripts and support tools for generating new modules, gems and vagrant configurations

> TODO: Rename project as 'jenny' already exists as an online gem and I bet it'll cause problems if I reuse that name :-(

[![Build Status](https://travis-ci.org/warmfusion/jenny.svg?branch=master)](https://travis-ci.org/warmfusion/jenny)


The motivation for this sript is to principally learn how to create CLI interfaces which are testable (and therefore tested) in ruby
and gain some value from doing so by providing a tool that'll create certain types of projects that I use frequently.

## Usage

    jenny vagrant myProject [--fqdn local.network.com]
    jenny help
    jenny help vagrant


### Creating new Vagrant projects

You can find out how to create new vagrant projects by simply using the provided
help tool. An example of this is shown below;


    jenny help vagrant
		Usage:
		  jenny vagrant HOSTNAME

		Options:
		  -f, [--fqdn=FQDN]  # The FQDN suffix for your hostname
		                     # Default: local

		Create a new Vagrant configuration with HOSTNAME given

# For Developers

## Installation

Install this project yourself from source using

    $ rake install


## Contributing

1. Fork it ( https://github.com/warmfusion/jenny/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Testing

    $ bundle exec cucumber features
    # To run the script directly, you can run through bundler like so...
    $ bundle exec bin/jenny vagrant
