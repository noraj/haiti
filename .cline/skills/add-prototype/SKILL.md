---
name: add-prototype
description: Add a new prototype (hash type).
---

# My Skill

Add the prototype.

## Sources

The john source code can be found at https://github.com/openwall/john, branch `bleeding-jumbo`.
The hashcat source code can be found at https://github.com/hashcat/hashcat/, branch `master`.

## Steps

1. Add the prototype (hash type) with the proper `regex` is the detection format does not exist yet, or add a new element inside `modes` if the format regexp already exists.
  - `regex` must match the `token` structure described in hashcat if available.
2. Fill the following keys as follows:
  - `john` is the format John the Ripper reference in lowercase that can be found in the `FORMAT_LABEL` variable in john souce code. Generally the matching file is located in `src/<format>_fmt_plug.c`. `null` if not existing.
  - `hashcat` is the hashcat format reference that can be found in the `KERN_TYPE` variable in hashcat souce code. Generally the matching file is located in `src/modules/module_<ref_id>.c`. `null` if not existing.
  - `extended` is a boolean. `true` mainly for dynamic modes or base formats with salts.
  - `name` is the name in the hash type format. It must be consitent with existing names in data/prototypes.json. Inspiration can be taken from `FORMAT_NAME` (or `FORMAT_LABEL` if empty) for john or from `HASH_NAME` for hashcat.
  - `samples` is an array of hash examples matching the hash format. They can be copied from `fmt_tests` for john or `ST_HASH` for hashcat.
3. Run tests to ensure it validates.
4. Add an entry in the changelog (`docs/CHANGELOG.md`).
