require 'rubygems'

Gem::Specification.new do |spec|
  spec.name        = 'crypt-fog'
  spec.version     = '1.0.2'
  spec.author      = 'Daniel J. Berger'
  spec.license     = 'Artistic-2.0'
  spec.description = 'A simple string encryption scheme'
  spec.email       = 'djberg96@gmail.com'
  spec.files       = Dir['**/*'].reject{ |f| f.include?('git') }
  spec.test_files  = ['test/test_crypt_fog.rb']
  spec.homepage    = 'https://github.com/djberg96/crypt-fog'

  spec.executables << 'fogenc'

  spec.add_development_dependency('rake')
  spec.add_development_dependency('test-unit', '~> 3.2')

  spec.metadata = {
    'homepage_uri'      => 'https://github.com/djberg96/crypt-fog',
    'bug_tracker_uri'   => 'https://github.com/djberg96/crypt-fog/issues',
    'changelog_uri'     => 'https://github.com/djberg96/crypt-fog/blob/master/CHANGES.md',
    'documentation_uri' => 'https://github.com/djberg96/crypt-fog/wiki',
    'source_code_uri'   => 'https://github.com/djberg96/crypt-fog',
    'wiki_uri'          => 'https://github.com/djberg96/crypt-fog/wiki'
  }

  spec.summary = <<-EOF
    crypt-fog is a simple encryption mechanism, but slightly better
    than Rot13.  It's primary goal is to provide a reasonable amount
    of obfuscation without having to resort to public/private key
    exchanges, etc.
  EOF
end
