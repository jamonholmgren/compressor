# -*- encoding: utf-8 -*-
VERSION = "0.0.1"

Gem::Specification.new do |gem|
  gem.name          = "compressor"
  gem.version       = VERSION
  gem.authors       = ["Jamon Holmgren"]
  gem.email         = ["jamon@clearsightstudio.com"]
  gem.summary       = %q{Concatenates your RubyMotion files so they build much faster.}
  gem.description   = %q{Concatenates your RubyMotion files so they build much faster than they normally would.}
  gem.homepage      = "https://github.com/jamonholmgren/compressor"
  gem.license       = "MIT"

  files = []
  files << 'README.md'
  files << 'lib/compressor.rb'
  gem.files         = files
  gem.executables   = [] # gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = [] # gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
