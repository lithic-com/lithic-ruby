# frozen_string_literal: true

require_relative "lib/lithic/version"

Gem::Specification.new do |s|
  s.name = "lithic"
  s.version = Lithic::VERSION
  s.summary = "Ruby library to access the Lithic API"
  s.authors = ["Lithic"]
  s.email = "sdk-feedback@lithic.com"
  s.homepage = "https://gemdocs.org/gems/lithic"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/lithic-com/lithic-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.0.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
