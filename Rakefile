require 'rake'
require 'rake/testtask'
include Config

desc "Install the crypt-fog package (non-gem) and the fogenc program"
task :install do
   dest = File.join(CONFIG['sitelibdir'], 'crypt')
   Dir.mkdir(dest) unless File.exists? dest
   cp 'lib/crypt/fog.rb', dest, :verbose => true
   cp 'bin/fogenc', CONFIG['bindir'], :verbose => true
end

desc "Install the crypt-fog library (non-gem) only"
task :install_lib do
   dest = File.join(CONFIG['sitelibdir'], 'crypt')
   Dir.mkdir(dest) unless File.exists? dest
   cp 'lib/crypt/fog.rb', dest, :verbose => true
end

desc 'Build the crypt-fog gem'
task :gem do
   spec = eval(IO.read('crypt-fog.gemspec'))
   Gem::Builder.new(spec).build
end

desc 'Install the crypt-fog library as a gem'
task :install_gem => [:gem] do
   file = Dir["*.gem"].first
   sh "gem install #{file}"
end

Rake::TestTask.new do |t|
   t.warning = true
   t.verbose = true
end
