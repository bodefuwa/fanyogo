$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "falomo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "falomo"
  s.version     = Falomo::VERSION
  s.authors     = ["Bode Fuwa"]
  s.email       = ["bodefuwa@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Falomo."
  s.description = "TODO: Description of Falomo."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
