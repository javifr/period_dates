# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'period_dates/version'

Gem::Specification.new do |spec|
  spec.name          = "period_dates"
  spec.version       = PeriodDates::VERSION
  spec.authors       = ["Javi Fernández"]
  spec.email         = ["jfernandezriverola@gmail.com"]
  spec.homepage      = "http://www.javifernandez.me"
  spec.summary       = "Getting date ranges given a date and a period"
  spec.description   = "Getting date ranges given a date and a period"
  spec.license       = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.test_files = Dir["test/**/*"]

  spec.rubyforge_project = "period_dates"

  spec.require_paths = ["lib"]

  spec.add_dependency "semester", ">= 0.0.1"
  spec.add_dependency "rails", ">= 4.0.4"
  spec.add_development_dependency "sqlite3"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end