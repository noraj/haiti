# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haiti/version'

Gem::Specification.new do |s|
  s.name          = 'haiti-hash'
  s.version       = Version::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2019-11-14'
  s.summary       = 'HAsh IdenTifIer'
  s.description   = 'A CLI tool to identify the hash type of a given hash.'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@engineer.com'
  s.homepage      = 'https://orange-cyberdefense.github.io/haiti/'
  s.license       = 'MIT'

  s.files         = Dir['bin/*'] + Dir['docs/**/*'] + Dir['lib/**/*.rb']
  s.files         += Dir['test/*.rb'] + Dir['data/*.json']
  s.files         += ['docs/.nojekyll', 'Rakefile']
  s.files         += ['README.md', 'LICENSE.txt', 'Gemfile.lock', 'Gemfile']
  s.files         += ['.yardopts-dev', '.yardopts', '.rubocop.yml']
  s.files         += ['.gitignore', '.editorconfig']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test)/})
  s.require_paths = ['lib']

  s.metadata = {
    'yard.run'          => 'yard',
    'bug_tracker_uri'   => 'https://github.com/Orange-Cyberdefense/haiti/issues',
    'changelog_uri'     => 'https://github.com/Orange-Cyberdefense/haiti/blob/master/docs/CHANGELOG.md',
    'documentation_uri' => 'https://orange-cyberdefense.github.io/haiti/',
    'homepage_uri'      => 'https://orange-cyberdefense.github.io/haiti/',
    'source_code_uri'   => 'https://github.com/Orange-Cyberdefense/haiti/'
  }

  s.required_ruby_version = '~> 2.4'

  s.add_runtime_dependency('docopt', '~> 0.6') # for argument parsing
  s.add_runtime_dependency('paint', '~> 2.1') # for colorized ouput

  s.add_development_dependency('bundler', '~> 2.0')
  s.add_development_dependency('commonmarker', '~> 0.20') # for GMF support in YARD
  s.add_development_dependency('github-markup', '~> 3.0') # for GMF support in YARD
  s.add_development_dependency('minitest', '~> 5.12')
  s.add_development_dependency('rake', '~> 13.0')
  s.add_development_dependency('redcarpet', '~> 3.5') # for GMF support in YARD
  s.add_development_dependency('rubocop', '~> 0.75')
  s.add_development_dependency('yard', '~> 0.9')
end
