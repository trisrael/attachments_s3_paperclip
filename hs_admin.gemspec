require File.expand_path("../lib/hs_admin/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "hs_admin"
  s.version = HS::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Tristan Goffman"]
  s.email = ["tgoffman@gmail.com"]
  s.homepage = ["trisrael.net"]
  s.summary = "hs-admin-#{s.version}"
  s.description = "Engine which add an admin login page to any Heroku Rails app as it relies on a password Heroku Environment Variable being set"
  s.add_dependency "rails", "~> 3.0.7"
  s.add_dependency "activesupport" , "~> 3.0.7"
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end