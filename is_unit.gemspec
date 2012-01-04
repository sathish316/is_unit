# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "is_unit/version"

Gem::Specification.new do |s|
  s.name        = "isunit"
  s.version     = IsUnit::VERSION
  s.authors     = ["Sathish"]
  s.email       = ["sathish316@gmail.com"]
  s.homepage    = "http://www.github.com/sathish316/is_unit"
  s.summary     = %q{IsUnit ensures your unit tests don't have external dependencies or dependencies on other classes unless explicitly stated making your code clean and easy to refactor}
  s.description = %q{IsUnit ensures your unit tests don't have external dependencies or dependencies on other classes unless explicitly stated making your code clean and easy to refactor}
  s.rubyforge_project = "is_unit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
