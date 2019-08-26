# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'routingo/version'

Gem::Specification.new do |spec|
  spec.name = 'routingo'
  spec.version = Routingo::VERSION
  spec.authors = ['popac']
  spec.email = ['aleksandar.popovic.popac@gmail.com']

  spec.summary = 'Routingo'
  spec.description = 'Gem that split routes.rb into smaller parts'
  spec.homepage = 'https://github.com/popac/routingo'
  spec.license = 'MIT'
  spec.post_install_message = 'Thanks for installing Routingo!'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = `git ls-files -z`.split("\x0")
                                .reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0', '>= 2.0.2'
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0.74.0'
  spec.add_runtime_dependency 'rails', '~> 6.0'
end
