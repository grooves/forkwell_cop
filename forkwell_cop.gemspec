# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'forkwell_cop/version'

Gem::Specification.new do |spec|
  spec.name          = 'forkwell_cop'
  spec.version       = ForkwellCop::VERSION
  spec.authors       = ['grooves']

  spec.summary       = 'RuboCop configration in Forkwell'
  spec.description   = 'RuboCop configration in Forkwell'
  spec.homepage      = 'https://github.com/grooves/forkwell_cop'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.46.0'
  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
end
