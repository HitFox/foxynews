$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foxynews/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foxynews"
  s.version     = Foxynews::VERSION
  s.authors     = ["Adam Bahlke"]
  s.email       = ["adam.bahlke@hitfoxgroup.com"]
  s.homepage    = "https://github.com/HitFox/foxynews"
  s.summary     = "Foxynews connects with a PR.co account and lets users access their pressrooms, presskits, timelines, stories, and clippings"
  s.description = "Foxynews provides a Rails Engine skin to your PR.co account. By default you can mount the Pressrooms and Presskits controllers, which follow the design and classnames of the PR.co basic layout. Otherwise, you can set up your own custom layouts using the parials."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "httparty", "~> 0.13"

  s.add_development_dependency "sqlite3"
end
