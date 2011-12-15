# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "parsilicious/version"

Gem::Specification.new do |s|
  s.name        = "parsilicious"
  s.version     = Parsilicious::VERSION
  s.authors     = ["Duncan Grazier"]
  s.email       = ["itsmeduncan@gmail.com"]
  s.homepage    = "https://github.com/itsmeduncan/parsilicious"
  s.summary     = %q{Parse your TicToc CSV exports into something useful}
  s.description = %q{Parse your TicToc CSV exports into something useful}

  s.rubyforge_project = "parsilicious"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", ["2.7.0"]
  s.add_development_dependency "simplecov", ["0.5.4"]
  s.add_development_dependency "mocha", ["0.10.0"]
end
