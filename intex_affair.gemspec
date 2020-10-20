
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "intex_affair/version"

Gem::Specification.new do |spec|
  spec.name          = "intex_affair"
  spec.version       = IntexAffair::VERSION
  spec.authors       = ["'Ernsyka Methelus'"]
  spec.email         = ["'ernsykamethelus@yahoo.com'"]

  spec.summary       = %q{"A Ruby gem to help introverts"}
  spec.description   = %q{"A Ruby gem to have musuem dates with yourself as a selfdate"}
  spec.homepage      = "https://github.com/ernsykamethelus/intex_affair.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://www.wmoda.com/visit-2/"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://www.wmoda.com/visit-2/"
    spec.metadata["changelog_uri"] = "https://www.wmoda.com/visit-2/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = ["self_care"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_dependency "colorize", "~> 0.8.1"
end
