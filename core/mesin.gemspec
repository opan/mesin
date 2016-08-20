$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mesin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mesin"
  s.version     = Mesin::VERSION
  s.authors     = ['Damar Kuncoro', 'Opan Mustopah', 'Dyo Medio']
  s.email       = ["opan.neutron@gmail.com"]
  s.homepage    = "http://mesin.github.io"
  s.summary     = "A modular Rails 5 application"
  s.description = "A modular Rails 5 application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency 'haml-rails'
  s.add_dependency 'pundit'
  s.add_dependency 'devise'
  s.add_dependency 'puma'
  s.add_dependency 'rake'

  s.add_development_dependency "activerecord-jdbcsqlite3-adapter"
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
end
