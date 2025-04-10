# frozen_string_literal: true

require_relative 'lib/haiti/version'

Gem::Specification.new do |s|
  s.name          = 'haiti-hash'
  s.version       = HashIdentifier::VERSION
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'HAsh IdenTifIer'
  s.description   = 'Hash type identifier (CLI & lib).'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@engineer.com'
  s.homepage      = 'https://noraj.github.io/haiti/'
  s.license       = 'MIT'

  s.files         = Dir['bin/*', 'lib/**/*.rb', 'data/*.json', 'man/*.1']
  s.files        += ['LICENSE.txt', 'docs/_media/logo.ascii']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.metadata = {
    'yard.run'              => 'yard',
    'bug_tracker_uri'       => 'https://github.com/noraj/haiti/issues',
    'changelog_uri'         => 'https://github.com/noraj/haiti/blob/master/docs/CHANGELOG.md',
    'documentation_uri'     => 'https://noraj.github.io/haiti/',
    'homepage_uri'          => 'https://noraj.github.io/haiti/',
    'source_code_uri'       => 'https://github.com/noraj/haiti/',
    'funding_uri'           => 'https://github.com/sponsors/noraj',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = ['>= 3.1.0', '< 4.0']

  s.add_runtime_dependency('docopt', '~> 0.6') # for argument parsing
  s.add_runtime_dependency('paint', '~> 2.3') # for colorized output
end
