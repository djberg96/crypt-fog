require 'rake'
require 'rake/clean'
require 'rspec/core/rake_task'

CLEAN.include("*.gem", "*.rbc", "*.lock")

namespace :gem do
  desc 'Build the crypt-fog gem'
  task :create => [:clean] do
    require 'rubygems/package'
    spec = Gem::Specification.load('crypt-fog.gemspec')
    spec.signing_key = File.join(Dir.home, '.ssh', 'gem-private_key.pem')
    Gem::Package.build(spec)
  end

  desc 'Install the crypt-fog library as a gem'
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install -l #{file}"
  end
end

desc "Run the test suite"
RSpec::Core::RakeTask.new(:spec)

task :default => :spec
