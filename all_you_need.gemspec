lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "all_you_need/version"

Gem::Specification.new do |spec|
  spec.name          = "all_you_need"
  spec.version       = AllYouNeed::VERSION
  spec.authors       = ["Dalia"]
  spec.email         = ["dalia.sawaya@flatironschool.com"]

  spec.summary       = %q{Roll the dice}
  spec.description   = %q{Find out how lucky you are in love}
  spec.homepage      = "http://www.love.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.love.com"
  spec.metadata["changelog_uri"] = "http://www.love.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
