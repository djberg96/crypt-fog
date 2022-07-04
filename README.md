## Description
The crypt-fog library is a simple encryption mechanism, but slightly better
than Rot13. Its primary goal is to provide a reasonable amount of
obfuscation without having to resort to public/private key exchanges, etc.

For truly sensitive data I recommend using a more advanced encryption scheme.

In addition to the module, a stand-alone program is included called
"fogenc" that takes both a string and a number as arguments and returns
your encrypted string. You can then copy/paste that string to a .rc file.
Just remember the number you picked in order to decrypt it.

## Installation
`gem install crypt-fog`

## Installing the Trusted Cert

`gem cert --add <(curl -Ls https://raw.githubusercontent.com/djberg96/crypt-fog/main/certs/djberg96_pub.pem)`

## Command Line
```
fogenc -s "hello" -d 1688
fogenc -f "test.txt" -d 1066
```
        
## Synopsis
```ruby
require 'crypt/fog' # or 'crypt-fog'
include Crypt

s = Fog.new("hello",2003)
p s # ";8??B"
p s.decrypt # "hello"

Fog.decrypt(";8??B",2003) # "hello"
```

## License
Artistic-2.0

## Copyright
(C) 2003-2021 Daniel J. Berger
All rights reserved.

## Author
Daniel J. Berger
