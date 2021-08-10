## [Unreleased]

## [1.2.2]

- Additions:
  - MD6 (128, 256, 512) [#84][#84]
  - Apple iWork [#65][#65]
  - SQLCipher [#66][#66]
  - Stuffit5 [#67][#67]
  - Stargazer Stellar Wallet XLM [#71][#71]
  - bcrypt(md5($pass)) [#72][#72]
  - bcrypt(sha1($pass)) [#72][#72]
- Enhancements:
  - MD5 APR: [#83][#83]
    - add JtR ref.
    - add `$1$` and `{smd5}` prefixes support
    - add `crypt(3)` name
    - add samples

[#84]:https://github.com/noraj/haiti/issues/84
[#83]:https://github.com/noraj/haiti/issues/83
[#65]:https://github.com/noraj/haiti/issues/65
[#66]:https://github.com/noraj/haiti/issues/66
[#67]:https://github.com/noraj/haiti/issues/67
[#71]:https://github.com/noraj/haiti/issues/71
[#72]:https://github.com/noraj/haiti/issues/72

## [1.2.1]

- Additions:
  - iPhone passcode [#56][#56]
  - MetaMask Wallet [#56][#56]
  - FortiGate256 [#59][#59]
  - Umbraco HMAC-SHA1 [#60][#60]
  - Jetico BestCrypt v3 Volume Encryption [#61][#61]
  - Jetico BestCrypt Container Encryption (.jbc) [#61][#61]
  - MongoDB (system / network) [#62][#62]
  - MongoDB SCRAM PBKDF2-SHA1 [#62][#62]
  - MongoDB ServerKey SCRAM-SHA-1 [#62][#62]
  - MongoDB ServerKey SCRAM-SHA-256 [#62][#62]
  - `sha1($salt.sha1($pass.$salt))` [#63][#63]
  - PDF 1.4 - 1.6 (Acrobat 5 - 8) - edit password [#70][#70]
- Enhancements:
  - DCC & DCC2:
    - better description
    - accept more formats [#58][#58]
  - Telegram Desktop
    - add HC ref. [#64][#64]
  - Dahua
    - add HC ref. [#68][#68]
    - better description [#68][#68]
  - Add samples
    - DCC & DCC2 [#58][#58]
    - Telegram Desktop [#64][#64]
    - Dahua [#68][#68]
    - Microsoft Office 2016 - SheetProtection [#69][#69]
    - PDF 1.4 - 1.6 (Acrobat 5 - 8) [#70][#70]
- Fixes:
  - DCC & DCC2: correct JtR hash name [#57][#57]
- Chore:
  - Test: Display algo name when failing

[#56]:https://github.com/noraj/haiti/issues/56
[#57]:https://github.com/noraj/haiti/issues/57
[#58]:https://github.com/noraj/haiti/issues/58
[#59]:https://github.com/noraj/haiti/issues/59
[#60]:https://github.com/noraj/haiti/issues/60
[#61]:https://github.com/noraj/haiti/issues/61
[#62]:https://github.com/noraj/haiti/issues/62
[#63]:https://github.com/noraj/haiti/issues/63
[#64]:https://github.com/noraj/haiti/issues/64
[#68]:https://github.com/noraj/haiti/issues/68
[#69]:https://github.com/noraj/haiti/issues/69
[#70]:https://github.com/noraj/haiti/issues/70

## [1.2.0]

- **Breaking changes**
  - Drop ruby 2.4 support
- Additions:
  - AxCrypt 1 [#47][#47]
  - AxCrypt 2 [#47][#47]
  - RAR5 [#49][#49]
  - RAR3 [#50][#50]
- Enhancements:
  - Add samples
    - Eggdrop IRC Bot [#48][#48]
    - DEScrypt [#48][#48]

[#47]:https://github.com/noraj/haiti/issues/47
[#48]:https://github.com/noraj/haiti/issues/48
[#49]:https://github.com/noraj/haiti/issues/49
[#50]:https://github.com/noraj/haiti/issues/50

## [1.1.3]

- Code:
  - add a `samples` attributes to `Chf`
- Additions:
  - argon2 [#45][#45]
- Enhancements:
  - BSDi Crypt [#30][#30]
  - MD5 [#31][#31]
  - sha1crypt [#40][#40]
  - PBKDF2-SHA1 [#41][#41]
  - PBKDF2-SHA256 [#42][#42]
  - PBKDF2-HMAC-SHA256 (PHP)
  - bitcoin [#43][#43]
  - PKZIP [#44][#44]
  - SHA-512
- Fixes:
  - CRC-32 [#28][#28]
  - Hashcat 3100 [#29][#29]
  - RIPEMD [#32][#32]
  - net-md5 [#33][#33]
  - PrestaShop [#34][#34]
  - mysql-sha1 [#35][#35]
  - MSSQL [#36][#36]
  - AuthMe [#37][#37]
  - Redmine [#38][#38]
  - Legacy hash types [#39][#39]
- Chore:
  - Add prototypes tests
- Documentation:
  - update examples

[#28]:https://github.com/noraj/haiti/issues/28
[#29]:https://github.com/noraj/haiti/issues/29
[#30]:https://github.com/noraj/haiti/issues/30
[#31]:https://github.com/noraj/haiti/issues/31
[#32]:https://github.com/noraj/haiti/issues/32
[#33]:https://github.com/noraj/haiti/issues/33
[#34]:https://github.com/noraj/haiti/issues/34
[#35]:https://github.com/noraj/haiti/issues/35
[#36]:https://github.com/noraj/haiti/issues/36
[#37]:https://github.com/noraj/haiti/issues/37
[#38]:https://github.com/noraj/haiti/issues/38
[#39]:https://github.com/noraj/haiti/issues/39
[#40]:https://github.com/noraj/haiti/issues/40
[#41]:https://github.com/noraj/haiti/issues/41
[#42]:https://github.com/noraj/haiti/issues/42
[#43]:https://github.com/noraj/haiti/issues/43
[#44]:https://github.com/noraj/haiti/issues/44
[#45]:https://github.com/noraj/haiti/issues/45

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
