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

# Define a task for installing the man page
desc 'Install the man page'
task :install_manpage do
  # Set the source and destination paths
  manpage_source = 'man/haiti.1'
  manpage_destination = '/usr/share/man/man1/'  # Adjust this path to match your system's man page directory

  # Copy the man page to the destination
  sh "cp #{manpage_source} #{manpage_destination}"

  # Update the man database
  sh 'mandb'
end
