# frozen_string_literal: true
# tic_tac_toe.gemspec

require_relative "lib/tic_tac_toe/version"

Gem::Specification.new do |spec|
  spec.name          = "tic_tac_toe"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["NonsoAmadi10"]
  spec.email         = ["nonsoamadi@aol.com"]

  spec.summary       = "Command line game built with Ruby"
  spec.description   = ""
  spec.homepage      = "https://github.com/NonsoAmadi10/Tic-tac-toe/blob/main/README.md"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/NonsoAmadi10/Tic-tac-toe"
  spec.metadata["changelog_uri"] = "https://github.com/NonsoAmadi10/Tic-tac-toe/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end