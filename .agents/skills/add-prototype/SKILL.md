---
name: add-prototype
description: Add a new prototype (hash type) to the project.
---

# Add a prototype

## Sources

- John the Ripper source code: https://github.com/openwall/john, branch `bleeding-jumbo`.
- Hashcat source code: https://github.com/hashcat/hashcat, branch `master`.

## Steps

1. Add the prototype (hash type). If a detection regular expression (`regex`) does not already exist, add it; otherwise, add a new element to the existing `modes`.
   - The regular expression (`regex`) must match the token structure described by Hashcat (`token`), when available.
2. Fill in the following keys:
   - `john`: the lowercase John the Ripper format reference from the `FORMAT_LABEL` variable in the John source code. The matching file is generally `src/<format>_fmt_plug.c`. Use `null` if no reference exists.
   - `hashcat`: the Hashcat format reference from the Hashcat source filename `src/modules/module_<ref_id>.c`. Use `null` if no reference exists.
   - `extended`: a boolean; set it to `true` mainly for dynamic modes or base formats with salts.
   - `name`: the hash type name, consistent with the existing names in `data/prototypes.json`. Use `FORMAT_NAME` (or `FORMAT_LABEL` if empty) from John, or `HASH_NAME` from Hashcat, for inspiration.
   - `samples`: an array of examples matching the hash format. Use `fmt_tests` from John or `ST_HASH` from Hashcat. Skip if the hash example is excessively long (more than 10k chars).
3. Run tests to validate the change (see AGENTS.md).
4. Add an entry to `docs/CHANGELOG.md`.
