# encoding: utf-8
$: << File.expand_path('../lib', __FILE__)
require 'loc_counter/version'

Gem::Specification.new do |s|
  s.name        = 'Countlinesofcode'
  s.version     = LOCCounter::VERSION
  s.authors     = ['Animesh']
  s.email       = ['@@']
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'activesupport', '~> 3.0'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'rspec'
end
