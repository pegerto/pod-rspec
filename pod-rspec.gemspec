# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pod/rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "pod-rspec"
  spec.version       = Pod::RSpec::VERSION
  spec.authors       = ["Pegerto Fernandez"]
  spec.email         = ["pegerto@gmail.com"]

  spec.summary       = %q{Test required pods by using kubelet-api}
  spec.description   = %q{Testing an existing running pod by curl and parsing the kube api}
  spec.homepage      = "https://github.com/pegerto/pod-rspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'serverspec', '~> 2'
end
