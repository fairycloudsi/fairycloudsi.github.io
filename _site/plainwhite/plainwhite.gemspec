# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "plainwhite"
  spec.version       = "0.1.0"
  spec.authors       = ["fairycloudsi"]
  spec.email         = ["huiwenw@uci.edu"]

  spec.summary       = "Homepage of Huiwen's research and projects of numerical linear algebra, machine learning and deep learning. "
  spec.homepage      = "http://fairycloudsi.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
