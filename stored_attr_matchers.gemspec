$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "stored_attr_matchers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "stored_attr_matchers"
  s.version     = StoredAttrMatchers::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of StoredAttrMatchers."
  s.description = "TODO: Description of StoredAttrMatchers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.7"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
