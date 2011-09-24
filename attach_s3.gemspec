require File.expand_path("../lib/attach_s3p/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "attach_s3p"
  s.version = S3P::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Tristan Goffman"]
  s.email = ["tgoffman@gmail.com"]
  s.homepage = ["trisrael.net"]
  s.summary = "attach_s3p_#{s.version}"
  s.description = "Rails Engine which adds a Paperclip attachment with s3 storage under the namespace S3P"
  s.add_dependency "rails", "~> 3.0.7"
  s.add_dependency "activesupport" , "~> 3.0.7"
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
