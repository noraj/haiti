# frozen_string_literal: true

require 'rake/testtask'
require 'bundler/gem_tasks'
require 'asciidoctor'
require_relative 'man/man_inline_macro'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task default: :test

desc 'Count the number of hash types'
task :count do
  puts File.read('data/prototypes.json').scan('"extended"').count
end

desc 'Create man pages'
task :man do
  Asciidoctor::Extensions.register do
    inline_macro ManInlineMacro
  end
  Dir['man/*.adoc'].each do |adoc|
    Asciidoctor.convert_file adoc, safe: :safe, backend: 'manpage'
  end
end
