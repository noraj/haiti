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
  puts File.read('data/prototypes.json').scan(/"extended"/).count
end
