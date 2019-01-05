# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'routingo/version'

Gem::Specification.new do |spec|
  spec.name          = "routingo"
  spec.version       = Routingo::VERSION
  spec.authors       = ["popicic"]
  spec.email         = ["aleksandar.popovic.popac@gmail.com"]

  spec.summary       = %q{Routingo}
  spec.description   = %q{Gem that split routes.rb into smaller parts}
  spec.homepage      = "https://github.com/popac/routingo"
  spec.license       = "MIT"
  spec.post_install_message = "Thanks for installing Routingo!"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0', '>= 2.0.1'
  spec.add_development_dependency 'rake', '~> 12.3.2'
  spec.add_development_dependency 'rspec', '~> 3.8.0'

  spec.add_runtime_dependency 'rails', '~> 5.2', '>= 5.2.2'
end
