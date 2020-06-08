## Why?

hashID is unmaintained since March 2015, hash-identifier is unmaintained since
March 2018 and Dagon since June 2018. They all have no/wrong/erroneous support
for modern hashes like Keccak/SHA3/Blake2 etc.
Also a tool like hash-identifier which is fully interractive and has no options
is not handy for scripting.
The most interresting tool is hashID (for hash identification) but since it is
unmaintained for more than 5 years, issue and open PR are stacking, bugs remain
and some features keep lacking.

That's what motivated me to create a *new* tool and by the way adding color
support and a library. The lib is especially good for scripting since one
doesn't have to wrap a CLI tool in a sub-process.

Tool                 | Maintained | Color | Ref. | Library | Lang | ️:hash:
---------------------|------------|-------|------|---------|------|---------------
haiti                | ✅          | ✅     | ✅    | ✅       | 💎   | ✅
[hashID][1]          | ❌          | ❌     | ✅    | ❌       | 🐍   | ⭕️
[hash-identifier][2] | ❌          | ❌     | ❌    | ❌       | 🐍   | ❌
[Dagon][3]           | ❌          | ⭕️    | ❌    | ❌       | 🐍   | ⭕️

Legend:

- Ref.: hashcat and john the ripper matching reference
- ✅: feature supported
- ❌: feature not supported
- ⭕️: feature partially support
- 💎: Ruby
- 🐍: Python
- :hash: correct modern hashes support

[1]:https://github.com/psypanda/hashID
[2]:https://github.com/blackploit/hash-identifier
[3]:https://github.com/Ekultek/Dagon
