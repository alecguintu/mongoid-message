# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid-message/version"

Gem::Specification.new do |s|
  s.name        = "mongoid-message"
  s.version     = Mongoid::Message::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["index"]
  s.email       = ["aeguintu@gmail.com"]
  s.homepage    = "https://github.com/alecguintu/mongoid-message"
  s.summary     = %q{Simple messaging system for your rails3 + mongoid}
  s.description = %q{Gem to add simple messaging system to your application}

  s.rubyforge_project = "mongoid-message"

  s.add_dependency "mongoid"
  s.add_dependency "bson_ext"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
