# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "travel_inspiration/version"

Gem::Specification.new do |spec|
  spec.name          = "travel_inspiration"
  spec.version       = TravelInspiration::VERSION
  spec.authors       = ["Lisa Huang"]
  spec.email         = ["lisa.yc.huang@gmail.com"]

  spec.summary       = %q{"A ruby gem to view travel inspiration by themes"}
  spec.description   = %q{"A ruby gem to view Lonely Planet travel inspiration by themes. You will learn about the top 6 destinations!"}
  spec.homepage      = "https://github.com/lisaychuang/travel_inspiration_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_dependency "colorize", "~> 0.8.1"
end
