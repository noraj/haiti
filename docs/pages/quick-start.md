# Quick start

## Quick install

```
$ gem install haiti-hash
```

## Default usage: CLI

```
$ haiti 786a02f742015903c6c6fd852552d272912f4740e15847618a86e217f71f5419d25e1031afee585313896444934eb04b903a685b1448b755d56f701afe9be2ce
SHA-512 [HC: 1700] [JtR: raw-sha512]
Whirlpool [HC: 6100] [JtR: whirlpool]
Salsa10
Salsa20
SHA3-512 [HC: 17600] [JtR: raw-sha3]
Keccak-512 [HC: 18000] [JtR: raw-keccak]
Blake2 [HC: 600] [JtR: raw-blake2]
Skein-512 [JtR: skein-512]
Skein-1024(512)
```

## Default usage: library

```ruby
require 'haiti'

# Instantiate a HashIdentifier object that will automatically identify
# the hash type
hi = HashIdentifier.new('786a02f742015903c6c6fd852552d272912f4740e15847618a86e217f71f5419d25e1031afee585313896444934eb04b903a685b1448b755d56f701afe9be2ce')

# Loop over the hash type candidates and retrieve data
hi.type.each do |type|
  name = type.name
  hashcat_id = type.hashcat
  john_ref = type.john
end
```
