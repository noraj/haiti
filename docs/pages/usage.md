# Usage

## CLI

<!-- tabs:start -->

### **haiti**

Main binary: identify hash types, list types and samples.

```
$ haiti -h
HAITI (HAsh IdenTifIer) v2.0.0

Usage:
  haiti [options] list
  haiti samples (<ref> | <name>)
  haiti [options] <hash>
  haiti --ascii-art
  haiti -h | --help
  haiti --version

Commands:
  samples         Display hash samples for the given type
  list            Display a list of all the available hash types

Parameters:
  <hash>          Hash string to identify, read from STDIN if equal to "-"
  <ref>           hashcat or john the ripper reference
  <name>          Hash type name

Options:
  --no-color      Disable colorized output (NO_COLOR environment variable is respected too)
  -e, --extended  List all possible hash algorithms including ones using salt
  --short         Display in a short format: do not display hashcat and john the ripper references
  --hashcat-only  Show only hashcat references
  --john-only     Show only john the ripper references
  --ascii-art       Display the logo in colored ascii-art
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  haiti -e d41d8cd98f00b204e9800998ecf8427e
  haiti --no-color --short d41d8cd98f00b204e9800998ecf8427e
  b2sum /etc/os-release | awk '{print $1}' | haiti -
  haiti samples crc32

Project:
  author (https://pwn.by/noraj / https://twitter.com/noraj_rawsec)
  source (https://github.com/noraj/haiti)
  documentation (https://noraj.github.io/haiti)
```

### **hashcat-haiti**

Wrapper for Hashcat where you can select the mode using haiti and fzf.

```
$ hashcat-haiti -h
HAITI (HAsh IdenTifIer) v2.0.0

Usage:
  hashcat-haiti [options] <hash> -- <hashcat_options>...
  hashcat-haiti -h | --help
  hashcat-haiti --version

Parameters:
  <hash>          Hash string to identify, read from STDIN if equal to "-"

Options:
  -e, --extended  List all possible hash algorithms including ones using salt
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  hashcat-haiti -e d41d8cd98f00b204e9800998ecf8427e -- hashes.txt /usr/share/wordlists/passwords/rockyou.txt -r /usr/share/doc/hashcat/rules/best64.rule
  hashcat-haiti d41d8cd98f00b204e9800998ecf8427e -- hashes.txt -a 3
  head -1 /tmp/hash.txt | hashcat-haiti - -- /tmp/hash.txt
  hashcat-haiti -e d41d8cd98f00b204e9800998ecf8427e -- hashes.txt --show

Project:
  author (https://pwn.by/noraj / https://twitter.com/noraj_rawsec)
  source (https://github.com/noraj/haiti)
  documentation (https://noraj.github.io/haiti)
```

### **john-haiti**

Wrapper for John the Ripper where you can select the format using haiti and fzf.

```
$ john-haiti -h 
HAITI (HAsh IdenTifIer) v2.0.0

Usage:
  john-haiti [options] <hash> -- <john_options>...
  john-haiti -h | --help
  john-haiti --version

Parameters:
  <hash>          Hash string to identify, read from STDIN if equal to "-"

Options:
  -e, --extended  List all possible hash algorithms including ones using salt
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  john-haiti -e d41d8cd98f00b204e9800998ecf8427e -- hashes.txt --wordlist=/usr/share/wordlists/passwords/rockyou.txt
  john-haiti 1f474c6dadb3cb2370f6cb88d4576ede0db9ff43 -- hashes.txt --rules=NT --fork=3
  head -1 /tmp/hash.txt | john-haiti - -- /tmp/hash.txt
  john-haiti -e d41d8cd98f00b204e9800998ecf8427e -- hashes.txt --show

Project:
  author (https://pwn.by/noraj / https://twitter.com/noraj_rawsec)
  source (https://github.com/noraj/haiti)
  documentation (https://noraj.github.io/haiti)
```

### **haiti-fzf**

Select a Hashcat or John the Ripper reference with fzf from one of the matching hash types.

Note: mostly useful for `hashcat-haiti` and `john-haiti` or building another binary or alias that will make use of haiti with fzf input.

```
$ haiti-fzf -h 
HAITI (HAsh IdenTifIer) v2.0.0

Usage:
  haiti-fzf hc [options] <hash>
  haiti-fzf jtr [options] <hash>
  haiti-fzf -h | --help
  haiti-fzf --version

Commands:
  hc             Select a Hashcat reference with fzf from one of the matching hash types
  jtr            Select a John the Ripper reference with fzf from one of the matching hash types

Parameters:
  <hash>          Hash string to identify, read from STDIN if equal to "-"

Options:
  -e, --extended  List all possible hash algorithms including ones using salt
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  haiti-fzf hc -e d41d8cd98f00b204e9800998ecf8427e
  haiti-fzf jtr d41d8cd98f00b204e9800998ecf8427e

Project:
  author (https://pwn.by/noraj / https://twitter.com/noraj_rawsec)
  source (https://github.com/noraj/haiti)
  documentation (https://noraj.github.io/haiti)
```

### **haiti-parsable**

Display hash types matching that have a Hashcat reference in an easily parsable format.

Note: mostly useful for `haiti-fzf` or building another binary or alias.

```
$ haiti-parsable -h
HAITI (HAsh IdenTifIer) v2.0.0

Usage:
  haiti-parsable hc [options] <hash>
  haiti-parsable jtr [options] <hash>
  haiti-parsable -h | --help
  haiti-parsable --version

Commands:
  hc             Display hash types matching that have a Hashcat reference
  jtr            Display hash types matching that have a John the Ripper reference

Parameters:
  <hash>          Hash string to identify, read from STDIN if equal to "-"

Options:
  -e, --extended  List all possible hash algorithms including ones using salt
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  haiti-parsable hc -e d41d8cd98f00b204e9800998ecf8427e
  haiti-parsable jtr d41d8cd98f00b204e9800998ecf8427e

Project:
  author (https://pwn.by/noraj / https://twitter.com/noraj_rawsec)
  source (https://github.com/noraj/haiti)
  documentation (https://noraj.github.io/haiti)
```

<!-- tabs:end -->

## Library

Identify hashes:

```ruby
require 'haiti'

# Instantiate a HashIdentifier object that will automatically identify
# the hash type
hi = HashIdentifier.new('786a02f742015903c6c6fd852552d272912f4740e15847618a86e217f71f5419d25e1031afee585313896444934eb04b903a685b1448b755d56f701afe9be2ce')

# Loop over the hash type candidates and retrieve data
hi.type.each do |type|
  # name of the hash function
  name = type.name
  # hashcat ID
  hashcat_id = type.hashcat
  # John the Ripper reference
  john_ref = type.john
  # Hash with salt
  extended = type.extended
  # Samples / Examples of hashes of that type
  samples = type.samples
end
```

Find hash samples for a given hash type (by name or hashcat/john the ripper reference):

```ruby
require 'haiti'

HashIdentifier.samples('crc32')
HashIdentifier.samples(1100)
HashIdentifier.samples('MD6-256')
```

## Console

Launch `irb` with the library loaded.

```
$ haiti_console
irb(main):001:0>
```
