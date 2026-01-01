## Why?

hashID is unmaintained since March 2015, hash-identifier is unmaintained since
2011, Dagon since June 2018 and findmyhash since 2011.
They all have no/wrong/erroneous support
for modern hashes like Keccak/SHA3/Blake2 etc.
Also a tool like hash-identifier which is fully interactive, has no options and
is not handy for scripting.
findmyhash has a very limited set of detected hashes.
The most interesting tool is hashID (for hash identification) but since it is
unmaintained for more than 10 years, issue and open PR are stacking, bugs remain
and some features keep lacking.

That's what motivated me to create a *new* tool and by the way adding color
support and a library. The lib is especially good for scripting since one
doesn't have to wrap a CLI tool in a sub-process.

Since January 2021, nearly two years after I started Haiti, a project named
Name-That-Hash surfaced because the author needed a Python lib for Ciphey.
Name-That-Hash has less hash types supported and have some broken or incomplete
regexp. It also lost momentum in 2023 and is now unmaintained.

HashDetector is just a wrapper of hashID.

The conclusion is that haiti is **THE** hash identifying tool and stay on the top
for now.

Tool                                | Maintained    | Color | Ref. | Library | Lang | :hash: | :1234:
------------------------------------|---------------|-------|------|---------|------|--------|-------
[haiti][0]                          | ✅ (2019-now)  | ✅     | ✅    | ✅       | 💎   | ✅      | 675+
[hashID][1]                         | ❌ (2013-2015) | ❌     | ✅    | ✅       | 🐍   | ⭕️     | 275
[hash-identifier][2]                | ❌ (2011-2011) | ❌     | ❌    | ❌       | 🐍   | ❌      | ~126
[Dagon][3]                          | ❌ (2017-2018) | ⭕️    | ❌    | ❌       | 🐍   | ⭕️     | ~48
[findmyhash][4]                     | ❌ (2011-2011) | ❌     | ❌    | ❌       | 🐍   | ❌      | ~17
[Name-That-Hash][5]                 | ✅ (2021-2025) | ✅     | ✅    | ✅       | 🐍   | ✅      | 388
[HashTag][6]                        | ❌ (2013-2013) | ❌     | ❌    | ❌       | 🐍   | ⭕      | ~137
[houndsniff][7]                     | ❌ (2020-2022) | ✅     | ❌    | ❌       | 🇨   | ❌      | 51
[HashData][8]                       | ❌ (2012-2015) | ✅     | ❌    | ✅       | 💎   | ❌      | 93
[Hatwitch][9]                       | ❌ (2017-2017) | ❌     | ❌    | ❌       | 💎   | ❌      | ~220
[WhatHashIsIt][10]                  | ❌ (2014-2014) | ❌     | ❌    | ❌       | 🟨   | ❌      | 125
[Hash-Algorithm-Identifier][11]     | ❌ (2014-2020) | ❌     | ❌    | ❌       | 🐍   | ❌      | ~160
[hash-detector][12] ([cli][12-cli]) | ❌ (2018-2021) | ❌     | ❌    | ✅       | 🟨   | ❌      | 44
[Go Detect that Hash][13]           | ❌ (2023-2024) | ✅     | ✅    | ✅       | 🔵   | ❌      | 246
[HashDetector][14]                  | ❌ (2016-2016) | ❌     | ✅    | ❌       | 🐍   | ⭕️      | 275
[Hashpeek][15]                      | ✅ (2025-2025) | ✅     | ✅    | ❌       | 🔵   | ⭕️      | 116

Legend:

- Ref.: hashcat and john the ripper matching reference
- ✅: feature supported
- ❌: feature not supported
- ⭕️: feature partially supported
- Programming language:
  - 💎: Ruby
  - 🐍: Python
  - 🇨 : C
  - 🟨 : JavaScript
  - 🔵 : Go
- :hash: correct modern hashes support
- 🔢 number of hash types supported

[0]:https://github.com/noraj/haiti
[1]:https://github.com/psypanda/hashID
[2]:https://code.google.com/archive/p/hash-identifier/
[3]:https://github.com/Ekultek/Dagon
[4]:https://code.google.com/archive/p/findmyhash
[5]:https://github.com/HashPals/Name-That-Hash
[6]:https://github.com/SmeegeSec/HashTag
[7]:https://github.com/MichaelDim02/houndsniff
[8]:https://github.com/sam-b/HashData
[9]:https://github.com/HatBashBR/Hatwitch
[10]:https://github.com/PaulSec/WhatHashIsIt
[11]:https://github.com/AnimeshShaw/Hash-Algorithm-Identifier
[12]:https://github.com/k4m4/hash-detector
[12-cli]:https://github.com/k4m4/hash-detector-cli
[13]:https://github.com/ArmanHZ/go-detect-that-hash
[14]:https://github.com/cothan/hashdectector
[15]:https://github.com/ph4mished/hashpeek/
