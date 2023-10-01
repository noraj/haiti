# frozen_string_literal: true

require 'rake/testtask'
require 'bundler/gem_tasks'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task default: :test

desc 'Count the number of hash types'
task :count do
  puts File.read('data/prototypes.json').scan('"extended"').count
end

# Define a task for creating the man page
desc 'Create the man page'
task :create_manpage do
  ronn_source = 'man/haiti.ronn'
  manpage_destination = 'man/haiti.1'

  # Generate the man page from the ronn file
  sh "ronn --roff #{ronn_source} > #{manpage_destination}"
end