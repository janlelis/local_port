# -*- encoding: utf-8 -*-

require File.expand_path('../lib/local_port', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "local_port"
  gem.version       = LocalPort::VERSION
  gem.summary       = %q{Find out which local ports are usable.}
  gem.description   = %q{Find out which ports on your system are free to use.}
  gem.license       = "MIT"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://rubygems.org/gems/local_port"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake', '~> 13.0'
end
