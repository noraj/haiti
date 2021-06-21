## [Unreleased]

## [1.1.3]

- Code:
  - add a `samples` attributes to `Chf`
- Enhancements:
  - BSDi Crypt [#30][#30]
- Fixes:
  - CRC-32 [#28][#28]
  - Hashcat 3100 [#29][#29]
- Chore:
  - Add prototypes tests

[#28]:https://github.com/noraj/haiti/issues/28
[#29]:https://github.com/noraj/haiti/issues/29
[#30]:https://github.com/noraj/haiti/issues/30

## [1.1.2]

- code: [#27][#27]
  - "office"
    - add JtR support for Microsoft Office 2007 & 2010
    - add JtR support for Microsoft Office 2019 (same as 2013)
    - add HC support for Microsoft Office 2016 - SheetProtection
  - "oldoffice"
    - add JtR support for Microsoft Office ≤ 2003 (SHA1+RC4)
  - Telegram
    - add JtR support for Telegram Desktop 1.3.9
    - add JtR support for Telegram Desktop ≥ 2.1.14 beta / 2.2.0
    - add HC support for Telegram Mobile App Passcode (SHA256)
  - Blake2
    - add JtR support for Blake2 hash using `$BLAKE2$` format
    - remove HC support for Blake2 hash using the normal format
  - PDF
    - add PDF 1.1 - 1.3 (Acrobat 2 - 4)
    - add PDF 1.1 - 1.3 (Acrobat 2 - 4), collider #1
    - add PDF 1.1 - 1.3 (Acrobat 2 - 4), collider #2
    - fix PDF 1.4 - 1.6 (Acrobat 5 - 8)
    - add PDF 1.7 Level 3 (Acrobat 9)
    - add PDF 1.7 Level 8 (Acrobat 10 - 11)
  - 7-zip
  - SecureZIP
    - SecureZIP AES-128
    - SecureZIP AES-192
    - SecureZIP AES-256
  - PKZIP
    - PKZIP Master Key
    - PKZIP Master Key (6 byte optimization)
    - PKZIP

[#27]:https://github.com/noraj/haiti/issues/27

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
