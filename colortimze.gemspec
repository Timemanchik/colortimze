# frozen_string_literal: true

require_relative "lib/colortimze/version"

Gem::Specification.new do |spec|
  spec.name = "colortimze"
  spec.version = Colortimze::VERSION
  spec.authors = ["Timemanchik"]
  spec.email = ["timemanchik@mail.ru"]

  spec.summary = "Funny colortimze"
  spec.description = "Color for your text"
  spec.homepage = "https://rubygems.org/gems/colortimze"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

 

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

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
