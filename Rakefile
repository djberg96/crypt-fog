require 'rake'
require 'rake/testtask'
require 'rake/clean'

CLEAN.include("*.gem", "*.rbc")

namespace :gem do
  desc 'Build the crypt-fog gem'
  task :create => [:clean] do
    spec = eval(IO.read('crypt-fog.gemspec'))
    require 'rubygems/package'
    if Gem::VERSION < "2.0"
      Gem::Builder.new(spec).build
    else
      Gem::Package.build(spec)
    end
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
