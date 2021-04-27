## [Unreleased]

## [1.1.1]

- code:
  - common algorithms are sorted first
  - add some BLAKE2 length variants
  - add some Kerberos variants
  - add some cryptocurrency wallets (bitcoin, ethereum, monero)
  - add Android Backup
  - add WinZip
  - add iTunes backup

## [1.1.0]

- code:
  - new extended (with salts) hash types support for JtR [#17][#17]
  - add Hashcat hashes
    - SHA-224
  - add John hashes [#17][#17]
    - RIPEMD-XXX
    - HAVAL-XXX
    - PANAMA
    - SKEIN-XXX
    - SHA3_XXX
    - KECCAK_XXX
- dependencies:
  - update
  - more tolerant about the ruby version required
  - ruby 3.0 support
- doc: update
- CI: add GitHub action

[#17]:https://github.com/noraj/haiti/issues/17

## [1.0.1]

- bin: code simplification & lint
- test: code lint
- repo: from [Orange-Cyberdefense/rabid](https://github.com/Orange-Cyberdefense/rabid) to [noraj/rabid](https://github.com/noraj/rabid/)
- dependencies: update
- rubocop: new rules for new cops
- deprecation: now requires ruby 2.7+ instead of 2.4+

## [1.0.0]

- lib: Fix a file loading path of prototypes
- doc: Fix gem name
- bin: remove useless haiti_setup

## [0.0.1]

- Initial version
