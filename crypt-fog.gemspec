require 'rubygems'

Gem::Specification.new do |gem|
   gem.name        = 'crypt-fog'
   gem.version     = '1.0.2' 
   gem.author      = 'Daniel J. Berger'
   gem.license     = 'Artistic 2.0'
   gem.description = 'A simple string encryption scheme'
   gem.email       = 'djberg96@gmail.com'
   gem.files       = Dir['**/*'].reject{ |f| f.include?('CVS') }
   gem.test_files  = ['test/test_crypt_fog.rb']
   gem.has_rdoc    = true
   gem.homepage    = 'http://www.rubyforge.org/projects/shards'

   gem.executables  << 'fogenc'

   gem.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']
   gem.rubyforge_project = 'shards'

   gem.summary = <<-EOF
      crypt-fog is a simple encryption mechanism, but slightly better
      than Rot13.  It's primary goal is to provide a reasonable amount
      of obfuscation without having to resort to public/private key
      exchanges, etc.
   EOF
end