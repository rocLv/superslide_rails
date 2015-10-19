# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'superslide_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "superslide_rails"
  spec.version       = SuperslideRails::VERSION
  spec.authors       = ["rocLv"]
  spec.email         = ["wangqsh999@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org"
  end

  spec.summary       = %q{Superslide for rails}
  spec.description   = %q{use jQuery plugin Superslide in Rails.}
  spec.homepage      = "https://github.com/roclv/superslide_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "> 3.0"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
