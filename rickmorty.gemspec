# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rickmorty/version'

Gem::Specification.new do |spec|
  spec.name          = "rickmorty"
  spec.version       = Rickmorty::VERSION
  spec.authors       = ["Thomas Kuhnert"]
  spec.email         = ["tommys.spielhoelle@gmail.com"]

  spec.summary       = %q{The Rick & Morty gem.}
  spec.description   = %q{Provides easy way to comunicate with the api in ruby environments}
  spec.homepage      = "https://github.com/spielhoelle/rick-and-morty-gem.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Test: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files       = ["lib/rickmorty.rb", "lib/rickmorty/base.rb","lib/rickmorty/character.rb","lib/rickmorty/episode.rb","lib/rickmorty/location.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_development_dependency 'faraday', '~> 0.9'
  spec.add_development_dependency 'json', '~> 2.0'

end
