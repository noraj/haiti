# Usage

## CLI

```
$ haiti -h
HAITI  (HAsh IdenTifIer)

Usage:
  haiti [options] <hash>
  haiti -h | --help
  haiti --version

Options:
  --no-color      Disable colorized output
  -e, --extended  List all possible hash algorithms including ones using salt
  --short         Display in a short format: do not display hashcat and john the ripper references
  --hashcat-only  Show only hashcat references
  --john-only     Show only john the ripper references
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  haiti -e d41d8cd98f00b204e9800998ecf8427e
  haiti --no-color --short d41d8cd98f00b204e9800998ecf8427e
```

## Library

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
end
```

## Console

Launch `irb` with the library loaded.

```
$ haiti_console
irb(main):001:0>
```
