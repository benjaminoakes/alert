# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alert/version'

Gem::Specification.new do |spec|
  spec.name          = 'alert'
  spec.version       = Alert::VERSION
  spec.authors       = ['Benjamin Oakes']
  spec.email         = ['hello@benjaminoakes.com']
  spec.description   = 'Alert displays a simple GUI alert.  Its shell interface is modeled after the `alert` command from BeOS.'
  spec.summary       = 'Easily add a little GUI interactivity to your Ruby and shell scripts.'
  spec.homepage      = 'https://github.com/benjaminoakes/alert'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
