require "rubygems/package_task"
require File.expand_path("../lib/digispark/version.rb", __FILE__)

Gem::Specification.new do |s|
  s.name           = "digispark"
  s.version        = Digispark::Version.to_s
  s.summary        = "Utility programs and libraries for Digistump's Digispark."
  s.description    = "Low level classes to control how and when the Digispark's lights will turn on."
  s.authors         = ["Joe Dean", "Mike Virata-Stone"]
  s.email          = ["joe.dean@gmail.com", "mike@virata-stone.com"]
  s.files          = FileList["bin/**/*", "lib/**/*"]
  s.require_path   = "lib"
  #s.bindir         = "bin"
  #s.executables    = ["digispark"]
  s.homepage       = "https://github.com/joedean/digispark"
  s.add_dependency "artoo-digispark", "~> 0.2.1"
end
