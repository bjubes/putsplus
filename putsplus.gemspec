# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'putsplus/version'

Gem::Specification.new do |spec|
  spec.name          = "putsplus"
  spec.version       = Putsplus::VERSION
  spec.authors       = ["Brian Jubelirer"]
  spec.email         = ["brian2386@gmail.com"]

  spec.summary       = "Builds upon the default puts command to create more attractive and programmer friendly user interfaces for command line applications."
  spec.homepage      = "http://rubygems.org/gems/putsplus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
