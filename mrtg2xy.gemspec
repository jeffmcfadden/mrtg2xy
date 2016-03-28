# coding: utf-8 #


lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrtg2xy/version'

Gem::Specification.new do |spec|
  spec.name          = "mrtg2xy"
  spec.version       = Mrtg2xy::VERSION
  spec.authors       = ["jeffmcfadden"]
  spec.email         = ["jeff@forgeapps.com"]

  spec.summary       = %q{Convert MRTG data files to an X:Y data format.}
  spec.description   = %q{Convert MRTG data files to an X:Y data format.}
  spec.homepage      = "https://github.com/jeffmcfadden/mrtg2xy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
