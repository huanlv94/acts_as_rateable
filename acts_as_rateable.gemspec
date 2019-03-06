# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["lehuan94cntt", "Le Huan"]
  gem.email         = "lehuan94cntt@gmail.com"
  gem.description   = "Acts_as_rateable is a rails plugin providing a rating interface for ActiveRecord models."
  gem.summary       = "Rails plugin providing a rating interface for ActiveRecord models"
  gem.homepage      = "http://github.com/lehuan94cntt/acts_as_rateable"
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "acts_as_rateable"
  gem.require_paths = ['lib']
  gem.version       = '1.0.0'
  #s.rdoc_options  = ["--main", "README"]
  #s.extra_rdoc_files = ["README", "MIT-LICENSE"]
end


