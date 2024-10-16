lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'panacee_support/version'

Gem::Specification.new do |spec|
  spec.name          = 'panacee_support'
  spec.version       = PanaceeSupport::VERSION
  spec.authors       = ['Liteomed team']
  spec.email         = ['contact@liteomed.com']

  spec.summary       = 'Shared libraries accross Panacee projects'
  spec.homepage      = 'https://github.com/Liteo-Med/panacee_support'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1.0')

  spec.metadata['allowed_push_host'] = 'https://github.com'
  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = Dir['lib/**/*',
                   'config/**/*',
                   'LICENSE.txt',
                   'README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 7.1'
  spec.add_dependency 'rainbow'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'

  # TODO: enable back these gems in the next release
  # spec.add_development_dependency 'rspec', '~> 3.0'
  # spec.add_development_dependency 'rubocop', '~> 1.0'
  # spec.add_development_dependency 'rubocop-performance', '~> 1.4'
  # spec.add_development_dependency 'rubocop-rails', '~> 2.0'
  # spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
  # spec.add_development_dependency 'shoulda-matchers'
  # spec.add_development_dependency 'simplecov'
end
