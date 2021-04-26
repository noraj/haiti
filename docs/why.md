## Why?

hashID is unmaintained since March 2015, hash-identifier is unmaintained since
2011, Dagon since June 2018 and findmyhash since 2011.
They all have no/wrong/erroneous support
for modern hashes like Keccak/SHA3/Blake2 etc.
Also a tool like hash-identifier which is fully interactive, has no options and
is not handy for scripting.
findmyhash has a very limited set of detected hashes.
The most interesting tool is hashID (for hash identification) but since it is
unmaintained for more than 5 years, issue and open PR are stacking, bugs remain
and some features keep lacking.

That's what motivated me to create a *new* tool and by the way adding color
support and a library. The lib is especially good for scripting since one
doesn't have to wrap a CLI tool in a sub-process.

Since January 2021, nearly two years after I started Haiti, a project named
Name-That-Hash surfaced because the author needed a Python lib for Ciphey.
There are now two valid options for hash identification.

Tool                 | Maintained | Color | Ref. | Library | Lang | :hash:
---------------------|------------|-------|------|---------|------|---------------
haiti                | ✅ (2019-now)  | ✅     | ✅    | ✅       | 💎   | ✅
[hashID][1]          | ❌ (2013-2015) | ❌     | ✅    | ❌       | 🐍   | ⭕️
[hash-identifier][2] | ❌ (2011-2011) | ❌     | ❌    | ❌       | 🐍   | ❌
[Dagon][3]           | ❌ (2017-2018) | ⭕️     | ❌    | ❌       | 🐍   | ⭕️
[findmyhash][4]      | ❌ (2011-2011) | ❌     | ❌    | ❌       | 🐍   | ❌
[Name-That-Hash][5]  | ✅ (2021-now)  | ✅     | ✅    | ✅       | 🐍   | ⭕
[HashTag][6]         | ❌ (201362013) | ❌     | ❌    | ❌       | 🐍   | ⭕

Legend:

- Ref.: hashcat and john the ripper matching reference
- ✅: feature supported
- ❌: feature not supported
- ⭕️: feature partially supported
- 💎: Ruby
- 🐍: Python
- :hash: correct modern hashes support

[1]:https://github.com/psypanda/hashID
[2]:https://code.google.com/archive/p/hash-identifier/
[3]:https://github.com/Ekultek/Dagon
[4]:https://code.google.com/archive/p/findmyhash
[5]:https://github.com/HashPals/Name-That-Hash
[6]:https://github.com/SmeegeSec/HashTag
