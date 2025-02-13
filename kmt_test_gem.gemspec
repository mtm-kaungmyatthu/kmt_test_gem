# frozen_string_literal: true

require_relative "lib/kmt_test_gem/version"

Gem::Specification.new do |spec|
  spec.name = "kmt_test_gem"
  spec.version = KmtTestGem::VERSION
  spec.authors = ["kaungmyatthu"]
  spec.email = ["kaung.myatthu@seattleconsultingmyanmar.com"]

  spec.summary = "This is a test gem by KMT"
  spec.description = "This is a test description by KMT"
  spec.homepage = "https://github.com/mtm-kaungmyatthu/kmt_test_gem.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mtm-kaungmyatthu/kmt_test_gem.git"
  spec.metadata["changelog_uri"] = "https://github.com/mtm-kaungmyatthu/kmt_test_gem/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
