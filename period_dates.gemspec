$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "period_dates/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "period_dates"
  s.version     = PeriodDates::VERSION
  s.authors     = ["Javier Fernández Riverola"]
  s.email       = ["jfernandezriverola@gmail.com"]
  s.homepage    = "www.javifernandez.me"
  s.summary     = "Getting date ranges given a date and a period"
  s.description = "Getting date ranges given a date and a period"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.13"
  # s.add_dependency "semester", ""

  s.add_development_dependency "sqlite3"
end
