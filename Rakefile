require 'rubygems'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

begin
  RSpec::Core::RakeTask.new(:spec)
  Cucumber::Rake::Task.new(:features)

  task :default => [:spec, :features]
rescue LoadError
  # RSpec is not available
end