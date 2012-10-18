require File.expand_path('../lib/stupidpassword/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "stupid_password"
  gem.version       = StupidPassword::VERSION
  # gem.date          = ???
  gem.summary       = "Stupid password detector"
  gem.description   = "Tell users their passwords are stupid and guessable."

  gem.homepage      = "http://github.com/pirj/stupid_password"
  gem.authors       = ["Phil Pirozhkov"]

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.require_paths = ["lib"]

  # gem.add_runtime_dependency 'ffi-aspell'

  gem.add_development_dependency 'rspec', '~> 2.0'
end
