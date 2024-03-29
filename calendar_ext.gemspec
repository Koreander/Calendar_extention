# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "calendar_ext/version"

Gem::Specification.new do |s|
  s.name        = "calendar_ext"
  s.version     = CalendarExt::VERSION
  s.authors     = ["Daniel Steiner"]
  s.email       = ["daniel.steiner@swisscom.com"]
  s.homepage    = ""
  s.summary     = %q{Diese Funktion ermöglicht es Aufträge aus dem IVO::Core in ein 
                  Mailprogramm zu abonnieren. Es wurde in ein Gem verpackt um es ins IVO::Core
                  einzubinden.}
  s.description = %q{Kalender Export Funktion für das IVO::Core}

  s.rubyforge_project = "calendar_ext"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
