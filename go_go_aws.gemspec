# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'go_go_aws/version'

Gem::Specification.new do |spec|
  spec.name          = "go_go_aws"
  spec.version       = GoGoAws::VERSION
  spec.authors       = ["Jack Ellis"]
  spec.email         = ["jack@mnmlst.cc"]
  spec.summary       = "Want to log into your instances easily? Good. Me too. "
  spec.description   = "Want to manage your resources? Start stop based on time of day per tag? COOL. ME TOO."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency('commander')
  spec.add_dependency('aws-sdk')
end
