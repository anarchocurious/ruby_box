# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_box/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_box'
  spec.version       = RubyBox::VERSION
  spec.authors       = ['Alec Larsen']
  spec.email         = ['aleclarsen42@gmail.com']

  spec.summary       = %q{RubyBox allows the execution of untrusted Ruby code safely in a sandbox.}
  spec.homepage      = 'https://github.com/anarchocurious/ruby_box'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.require_paths = %w{ lib }

  spec.required_ruby_version = '>= 2.3.0'

  spec.add_dependency 'mini_racer', '~> 0.1'
  spec.add_dependency 'opal', '~> 0.10'
  spec.add_dependency 'activesupport', '>= 4.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'benchmark-ips'
end
