
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vradonjic_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "vradonjic_view_tool"
  spec.version       = VradonjicViewTool::VERSION
  spec.authors       = ["Vladislav Radonjic"]
  spec.email         = ["vanjar@gmail.com"]

  spec.summary       = %q{This gem is a part of a tutorial. It has no other real purpose.}
  spec.description   = %q{Creating this gem is a part of a Ruby on Rails tutorial by Devcamp, on Udemy.}
  spec.homepage      = "http://hercules.rs"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
