# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metaforce/delivery_method/version'

Gem::Specification.new do |gem|
  gem.name          = 'metaforce-delivery_method'
  gem.version       = Metaforce::DeliveryMethod::VERSION
  gem.authors       = ['Eric J. Holmes']
  gem.email         = ['eric@ejholmes.net']
  gem.description   = %q{Delivery method for sending emails from Ruby using Salesforce}
  gem.summary       = %q{Delivery method for sending emails from Ruby using Salesforce}
  gem.homepage      = 'https://github.com/ejholmes/metaforce-delivery_method'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'metaforce', '~> 1.0.0a'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'mail'
end
