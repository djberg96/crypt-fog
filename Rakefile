require 'rake'
require 'rake/testtask'
require 'rake/clean'

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

Rake::TestTask.new do |t|
  t.warning = true
  t.verbose = true
end

task :default => :test
