require_relative 'lib/fag/version'

Gem::Specification.new do |spec|
  spec.name          = "fag"
  spec.version       = Fag::VERSION
  spec.authors       = ["CHIKURA Shinsaku"]
  spec.email         = ["shinsaku@chikura.me"]

  spec.summary       = %q{file arrangement & grouping}
  spec.description   = %q{file arrangement & grouping}
  spec.homepage      = "https://github.com/chsh/fag"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/chsh/fag'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/chsh/fag"
  spec.metadata["changelog_uri"] = "https://github.com/chsh/fag"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
end
