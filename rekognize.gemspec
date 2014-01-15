# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rekognize/version'

Gem::Specification.new do |spec|
  spec.name          = "rekognize"
  spec.version       = Rekognize::VERSION
  spec.authors       = ["Dennis de Vulder"]
  spec.email         = ["dennisdevulder@gmail.com"]
  spec.description   = %q{description}
  spec.summary       = %q{summary}
  spec.homepage      = "http://youfirst.nl"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
