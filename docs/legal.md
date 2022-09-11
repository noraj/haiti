# Legal

The source code, documentation and all other files of this project are licensed under those terms: [license](https://github.com/noraj/haiti/blob/master/LICENSE.txt) (copyright Alexandre ZANNI, MIT license).

The samples hashes used in `data/prototypes.json` are licensed under various terms:

- Some were created by noraj and so are licensed under the same terms as above (copyright Alexandre ZANNI, MIT license).
- Some are copied from Hashcat modules and so are licensed under the MIT license and copyrighted by various authors, below more information about the legal terms of the Hashcat project:
  - [credits.txt](https://github.com/hashcat/hashcat/blob/master/docs/credits.txt)
  - [license.txt](https://github.com/hashcat/hashcat/blob/master/docs/license.txt)
- Some are copied from John the Ripper modules and so are distributed under those terms: `Redistribution and use in source and binary forms, with or without modification, are permitted` and copyrighted by various authors. Below more information about the legal terms of the John the Ripper project:
  - [COPYING](https://github.com/openwall/john/blob/bleeding-jumbo/doc/COPYING)
  - [CREDITS](https://github.com/openwall/john/blob/bleeding-jumbo/doc/CREDITS)
  - [CREDITS-jumbo](https://github.com/openwall/john/blob/bleeding-jumbo/doc/CREDITS-jumbo)
  - [LICENSE](https://github.com/openwall/john/blob/bleeding-jumbo/doc/LICENSE)

The hash type prototypes structure in `data/prototypes.json` was inspired by hashID [prototypes.json](https://github.com/psypanda/hashID/blob/master/prototypes.json) but was extended. Despite hashID being under GPL [LICENSE](https://github.com/psypanda/hashID/blob/master/doc/LICENSE), the content of the prototype file was heavily modified and greatly completed in haiti, the prototype file is not some source code of a programming language (python is used by hashID), the prototype file is not used by the hashID program (`hashid.py` self contains [prototypes](https://github.com/psypanda/hashID/blob/7e8473a823060e56d4b6090a98591e252bd9505e/hashid.py#L36) in a python code form and is not using `prototype.json`), haiti doesn't use any part of hashID source code, the mapping between Hashcat or John the Ripper references and the hash type name comes from Hashcat and John the Ripper modules anyway so only the regexp can be considered "original work" under certain circumstances (yet re-implementing the regexp without the knowledge of hashID `prototypes.json` will result in the same regexp in more than 90% of the time as there are various way to write a regexp matching the same thing but there is often a minimal form that would be the same, so re-implementing the regexp from scratch will eventually results in a very similar file). For all those reasons, it's believed that re-using some parts of hashID `prototypes.json` into haiti is possible under the [Fair Use](https://www.gnu.org/licenses/gpl-faq.html#GPLFairUse) case without relicensing haiti under GPL. So haiti `data/prototypes.json` should be considered under mixed licensing: permissive license (MIT or unexplicit) for hash samples from Hashcat and John the Ripper, GPL3 for untouched hashID nodes (` wdiff -s hashID-prototypes.json haiti-prototypes.json`), and MIT for other nodes created/modified by Alexandre ZANNI.
