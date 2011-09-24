# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "invim/version"

Gem::Specification.new do |s|
  s.name        = "invim"
  s.version     = Invim::VERSION
  s.authors     = ["Milan Dobrota"]
  s.email       = ["milan@milandobrota.com"]
  s.homepage    = ""
  s.summary     = %q{Open current terminal tab in vim}
  s.description = %q{Open current terminal tab (shell, irb) in vim text editor.}

  s.rubyforge_project = "invim"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  puts s.executables
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
