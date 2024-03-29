# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'learning/version'

Gem::Specification.new do |spec|
  spec.name          = "learning"
  spec.version       = Learning::VERSION
  spec.authors       = ["Kevin Hutson"]
  spec.email         = [""]
  spec.description   = %q{learning}
  spec.summary       = %q{learning}
  spec.homepage      = "https://github.com/mrjabba/learning"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "debugger"
  spec.add_development_dependency "turn"
end
