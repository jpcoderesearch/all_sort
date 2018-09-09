
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "all_sort/version"

Gem::Specification.new do |spec|
  spec.name          = "all_sort"
  spec.version       = AllSort::VERSION
  spec.authors       = ["jpcoderesearch"]
  spec.email         = ["jpcoderesearch@gmail.com"]

  spec.summary       = %q{All sorting Algorithms.}
  spec.description   = %q{ If you want to choose differene sorting Algorithm for a particular case. use this Gem}
  spec.homepage      = "https://github.com/jpcoderesearch/all_sort"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
