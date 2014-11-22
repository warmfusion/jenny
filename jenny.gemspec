# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jenny/version'

Gem::Specification.new do |spec|
  spec.name          = "jenny"
  spec.version       = Jenny::VERSION
  spec.authors       = ["Toby Jackson"]
  spec.email         = ["admin@warmfusion.co.uk"]
  spec.summary       = "jenny-#{spec.version}"
  spec.description   = 'A command line tool that creates vagrant, puppet module and other frequently 
  instantiated project types so that conventions are followed more easily'
  spec.homepage      = "http://github.com/warmfusion/jenny"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"

  spec.add_dependency "thor"
end
