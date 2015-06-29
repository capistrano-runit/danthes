# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "capistrano-runit-danthes"
  spec.version       = '0.2.0'
  spec.authors       = ["Alexander Simonov"]
  spec.email         = ["alex@simonov.me"]
  spec.summary       = %q{Capistrano3 tasks for manage danthes through puma via runit supervisor.}
  spec.description   = %q{Capistrano3 tasks for manage danthes through puma via runit supervisor.}
  spec.homepage    = 'http://capistrano-runit.github.io'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'capistrano-runit-core', '~> 0.2.0'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
