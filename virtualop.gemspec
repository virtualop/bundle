# encoding: utf-8
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "vop/version"

Gem::Specification.new do |spec|
  spec.name          = "virtualop"
  spec.version       = "0.3.6"
  spec.authors       = ["Philipp T."]
  spec.email         = ["philipp@hitchhackers.net"]

  spec.summary       = %q{The virtualop is a systems automation framework.}
  spec.description   = %q{Ruby-based scripting framework with a plugin/command architecture, entities, contributions, filters and asynchronous workers. Shell included, web interface in a separate project.}
  spec.homepage      = "http://virtualop.org"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.bindir        = "exe"
  spec.require_paths = ["lib"]
  if File.exists? ".git"
    spec.files         = `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  end

  spec.add_dependency "vop", '~> 0'
  spec.add_dependency "vop-plugins", '~> 0'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
