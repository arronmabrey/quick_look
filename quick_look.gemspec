# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quick_look/version'

Gem::Specification.new do |spec|
  spec.name          = "quick_look"
  spec.version       = QuickLook::VERSION
  spec.authors       = ["Arron Mabrey"]
  spec.email         = ["arron@mabreys.com"]
  spec.summary       = %q{A very simplistic ruby wrapper around QuickLook for OS X.}
  spec.description   = %q{A very simplistic ruby wrapper around QuickLook for OS X.}
  spec.homepage      = "https://github.com/arronmabrey/quick_look"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
