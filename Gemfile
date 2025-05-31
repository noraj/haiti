# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :runtime, :cli do
  gem 'docopt', '~> 0.6' # for argument parsing
  gem 'paint', '~> 2.3' # for colorized output
end

group :development, :install do
  gem 'bundler', '~> 2.1'
end

group :development, :test do
  gem 'minitest', '~> 5.25'
  gem 'rake', '~> 13.2'
end

group :development, :lint do
  gem 'rubocop', '~> 1.66'
end

group :development, :docs do
  gem 'asciidoctor', '~> 2.0' # for manpage generation
  gem 'commonmarker', '~> 2.0' # for markdown support in YARD
  # gem 'yard', ['>= 0.9.27', '< 0.10']
  # https://github.com/lsegal/yard/issues/1528
  gem 'yard', github: 'ParadoxV5/yard', ref: '9e869c940859570b07b81c5eadd6070e76f6291e', branch: 'commonmarker-1.0'
end
