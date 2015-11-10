$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
# require "period_dates/version"

# Describe your gem and declare its dependencies:
# Gem::Specification.new do |s|
#   s.name        = "period_dates"
#   s.version     = PeriodDates::VERSION
#   s.authors     = ["Javier Fernández Riverola"]
#   s.email       = ["jfernandezriverola@gmail.com"]
#   s.homepage    = "http://www.javifernandez.me"
#   s.summary     = "Getting date ranges given a date and a period"
#   s.description = "Getting date ranges given a date and a period"

#   s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
#   s.test_files = Dir["test/**/*"]

#   s.add_dependency "rails", ">= 4.0.13"
#   s.add_dependency "semester", ">= 0.0.1"
#   s.add_development_dependency "sqlite3"
# end


# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'period_dates/version'

Gem::Specification.new do |spec|
  spec.name          = "period_dates"
  spec.version       = PeriodDates::VERSION
  spec.authors       = ["Javi Fernández"]
  spec.email         = ["jfernandezriverola@gmail.com"]
  spec.homepage    = "http://www.javifernandez.me"
  spec.summary     = "Getting date ranges given a date and a period"
  spec.description = "Getting date ranges given a date and a period"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.test_files = Dir["test/**/*"]

  spec.rubyforge_project = "period_dates"

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.0.4"
  spec.add_dependency "semester", ">= 0.0.1"
  spec.add_development_dependency "sqlite3"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end