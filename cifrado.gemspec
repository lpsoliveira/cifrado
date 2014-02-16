# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cifrado/version'

Gem::Specification.new do |gem|
  gem.name          = "cifrado"
  gem.version       = Cifrado::VERSION
  gem.authors       = ["Sergio Rubio"]
  #gem.signing_key   = File.expand_path("~/.gem/gem-private_key.pem")
  gem.cert_chain    = ["gem-public_cert.pem"]
  gem.email         = ["rubiojr@frameos.org"]
  gem.description   = %q{OpenStack Swift CLI with encryption support}
  gem.summary       = %q{OpenStack Swift CLI with encryption support}
  gem.homepage      = "http://rubiojr.github.com/cifrado"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency 'excon'
  gem.add_dependency 'thor', '>= 0.17'
  gem.add_dependency 'ruby-progressbar'
  gem.add_dependency 'multi_json'
  gem.add_dependency 'mime-types'
  gem.add_dependency 'yajl-ruby'
  gem.add_dependency 'formatador'
  gem.add_dependency 'shexy'
  
  gem.add_development_dependency 'shindo'
end
