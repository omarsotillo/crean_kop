# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)

require 'crean_cop'

Gem::Specification.new do |gem|
  gem.name          = 'crean_cop'
  gem.version       = CreanCop::VERSION
  gem.licenses      = %w[MIT]
  gem.authors       = ['Omar Sotillo']
  gem.email         = ['omarsotillofranco@gmail.com']
  gem.summary       = 'Dependency and configuration for rubocop.'

  gem.files         = `git ls-files -z`.split("\x0")
    .reject { |f| f.match(%r{^spec/}) }
  gem.require_paths = ['lib']

  gem.add_dependency 'rubocop'
end
