# frozen_string_literal: true

require_relative "lib/enr/version"

Gem::Specification.new do |spec|
  spec.name = "enr"
  spec.version = Enr::VERSION
  spec.authors = ["Yuya.Nishida."]

  spec.summary = "enr: EverNote Request"
  spec.description = "An Evernote command program"
  spec.homepage = "https://github.com/nishidayuya/enr"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "base64" # suppress warnings
  spec.add_dependency "evernote_oauth"

  spec.add_development_dependency "debug"
end
