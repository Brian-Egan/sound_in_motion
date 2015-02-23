# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name        = "sound_in_motion"
  gem.version     = '0.0.3'
  gem.summary     = "Easy use of AudioToolbox sounds in RubyMotion projects"
  gem.description = "Quickly play short sounds in RubyMotion projects"
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.homepage    = "http://github.com/Brian-Egan/sound_in_motion"
  gem.authors     = ["Brian Egan"]
  gem.email       = "bfegan@gmail.com"
  gem.license     = "MIT"
end