lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'simple_i18n/version'

Gem::Specification.new do |s|
  s.name        = 'simple_i18n'
  s.version     = SimpleI18n::VERSION
  s.date        = '2018-01-27'
  s.summary = 'A simple internationalisation (i18n) gem for Ruby.'
  s.authors     = ['Andrew Walter']
  s.email       = 'andrew@xtrasimplicity.com'
  s.files       = Dir['lib/**/*'] + %w(LICENSE README.md)
  s.homepage    =
    'https://github.com/xtrasimplicity/simple_i18n'
  s.license       = 'MIT'

  s.add_development_dependency 'rspec'
end