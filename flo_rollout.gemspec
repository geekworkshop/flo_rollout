$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flo_rollout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flo_rollout"
  s.version     = FloRollout::VERSION
  s.authors     = ["kevin87"]
  s.email       = ["kevin.ho@flochip.com"]
  s.homepage    = ""
  s.summary     = "Summary of FloRollout."
  s.description = "Description of FloRollout."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "rollout"

  s.add_development_dependency "sqlite3"
end
