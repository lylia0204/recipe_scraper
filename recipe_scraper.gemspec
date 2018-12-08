lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'recipe_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = 'recipe_scraper'
  spec.version       = RecipeScraper::VERSION
  spec.authors       = ['Alexandre Rousseau']
  spec.email         = ['contact@rousseau-alexandre.fr']

  spec.summary       = 'A web scraper to get recipe data just by its web url'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/madeindjs/recipe_scraper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'nokogiri'
end
