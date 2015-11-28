$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "selling/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "selling"
  s.version     = Selling::VERSION
  s.authors     = ["AlexVangelov"]
  s.email       = ["email@data.bg"]
  s.homepage    = "https://github.com/AlexVangelov/selling"
  s.summary     = "The parent of billing gem"
  s.description = "Selling model structure for billing gem"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
