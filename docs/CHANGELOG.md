## [unreleased]

- **Breaking changes**:
  - **Drop** Ruby 2.5 support, [EOL since 05/04/2021](https://www.ruby-lang.org/en/downloads/branches/) and not supported by Rubocop since [1.29.0](https://github.com/rubocop/rubocop/releases/tag/v1.29.0)
  - **Drop** Ruby 2.6 support, [EOL since 12/04/2021](https://www.ruby-lang.org/en/downloads/branches/) and not supported by Rubocop since [1.51.0](https://github.com/rubocop/rubocop/releases/tag/v1.51.0)
  - _Warning_: Drop Ruby 2.7 support soon, [EOL since 31/03/2023](https://www.ruby-lang.org/en/downloads/branches/) but still supported by Rubocop
- **Additions**:
  - New `list` command [#159][#159]
  - SSHA-256 (Base64) [#147][#147]
  - LDAP (SSHA-256) [#147][#147]
  - IPMI 2.0 RAKP HMAC-MD5 [#144][#144]
  - RedHat 389-DS LDAP (PBKDF2-HMAC-SHA256) [#160][#160]
  - PBKDF2-HMAC-MD5 [#160][#160]
  - PBKDF2-HMAC-SHA1 [#160][#160]
  - PBKDF2-HMAC-SHA512 [#160][#160]
- **Enhancements**:
  - SSHA: [#145][#145]
    - update JtR label
    - fix regexp
    - add OPENLDAPS flavor
    - add samples
  - AIX: [#146][#146]
    - AIX (smd5): add samples
    - AIX (ssha256): add samples
    - AIX (ssha512): add samples
    - AIX (ssha1): add samples
  - SSHA-512: [#147][#147]
    - fix regexp
    - add samples
  - IPMI2 RAKP HMAC-SHA1 [#144][#144]
    - fix regexp
    - add samples
    - add JtR format
  - Django (PBKDF2-HMAC-SHA256) [#160][#160]
    - add samples
  - PBKDF2-HMAC-SHA256 [#160][#160]
    - fix regexp
    - split regexp in 2 (1 for HC & 1 for JtR)
    - add samples
  - Atlassian (PBKDF2-HMAC-SHA1) [#160][#160]
    - enhance regexp
    - add JtR & HC refs.
    - enhance name
    - add samples
  - PBKDF2-HMAC-SHA1 (Cryptacular) [#160][#160]
    - enhance name
    - add samples
  - macOS v10.8+ (PBKDF2-HMAC-SHA512) [#160][#160]
    - enhance regexp
    - enhance name
    - add samples
    - remove duplicate mode
  - Updated hash names in `commons.json` to reflect `prototypes.json` changes
- **Documentation**:
  - added a man page

[#145]:https://github.com/noraj/haiti/issues/145
[#146]:https://github.com/noraj/haiti/issues/146
[#147]:https://github.com/noraj/haiti/issues/147
[#144]:https://github.com/noraj/haiti/issues/144
[#159]:https://github.com/noraj/haiti/pull/159
[#160]:https://github.com/noraj/haiti/issues/160

## [1.5.0]

- **Additions**:
  - blake2s
  - sm3
  - Shake-128
  - Shake-256
  - Shake-512
  - BLAKE3
  - HighwayHash
  - Streebog-256
  - Streebog-512
  - Add an ascii-art option
- **Enhancements**:
  - **Colors**:
    - help message is colored
    - change reference colors to match the same theme
  - NTLM: [#139][#139]
    - Add recognition for common dump format
    - Add samples
  - argon2id:
    - Add samples
  - SHA-1, SHA-224, SHA-256, SHA-384:
    - Add samples
  - BLAKE2-512, BLAKE2-224, BLAKE2-256, BLAKE2-384:
    - Add samples
    - Enhance name
  - Keccak-224, Keccak-384:
    - Add samples
  - Keccak-256, Keccak-512:
    - Add samples
    - Alternative format
  - SHA3-224, SHA3-256, SHA3-384, SHA3-512:
    - Add samples
  - Whirlpool
    - Add samples
  - Snefru-128, Snefru-256:
    - Add samples
  - MD2, MD4:
    - Add samples
  - Tiger-128, Tiger-160, Tiger-192:
    - Add samples
    - Alternative format
    - 3-4 rounds variant
  - All Skein:
    - Add samples
  - Gost, Gost Crypto:
    - Add samples
  - Adler, CRC-32, FNV:
    - Add samples
  - Joaat:
    - Add samples
  - All Haval:
    - Add samples
- **Changes**:
  - All regexp will now use `\A` and `\Z` instead of `^` and `$` to prevent multi-line false positives
  - Make the `samples` command case insensitive
- **Chore**:
  - Add support for Ruby 3.2
  - Add project reference in help message

[#139]:https://github.com/noraj/haiti/issues/139

## [1.4.1]

- **Additions**:
  - scrypt Crypt
  - ScryptKDF
  - yescrypt [#130][#130]
  - gost-yescrypt [#130][#130]
  - OpenSSH private keys [#131][#131]
  - BitLocker [#134][#134]
  - Open Document Format (ODF) 1.2 (SHA-256, AES) [#135][#135]
  - Open Document Format (ODF) 1.1 (SHA-1, Blowfish) [#135][#135]
  - SIP digest authentication (MD5) [#136][#136]
- **Enhancements**:
  - scrypt:
    - Add samples
  - Cisco Type 9 (scrypt)
    - Add samples
    - Enhance name
    - Fix JtR ref.
  - Cisco Type 8 (PBKDF2-SHA256)
    - Add samples
    - Enhance name
    - Fix JtR ref.
  - Cisco Type 4 (Raw SHA256)
    - Add samples
    - Enhance name
    - Fix JtR ref.
  - Cisco Type 7 (XOR)
    - Add samples
    - Enhance name
  - Cisco Type 5 (MD5)
    - Add samples
    - Enhance name
    - Fix regexp
  - Cisco-ASA (MD5)
    - Add samples
  - Cisco-PIX (MD5)
    - Add samples
  - BSDi Crypt
    - Add samples
  - Sun / Solaris MD5 Crypt
    - Add samples
    - Enhance name
  - SHA-256 Crypt
    - Add samples
  - SHA-512 Crypt
    - Add samples
  - NTHash (FreeBSD Variant)
    - Add samples
  - RACF
    - Add samples
  - DNSSEC (NSEC3)
    - Add samples
  - Lastpass [#133][#133]
    - Add samples
    - Fix regexp
    - Add several variants
    - Add JtR support
  - Woltlab Burning Board 3.x
    - Add samples
  - Radmin 2
    - Add samples
  - SipHash
    - Add samples
- **Documentation**:
  - Comparison to HashData
- **Chore**:
  - Stop testing on Ruby 2.5 because Github Action (CI) has some issue with it.

[#130]:https://github.com/noraj/haiti/issues/130
[#131]:https://github.com/noraj/haiti/issues/131
[#133]:https://github.com/noraj/haiti/issues/133
[#134]:https://github.com/noraj/haiti/issues/134
[#135]:https://github.com/noraj/haiti/issues/135
[#136]:https://github.com/noraj/haiti/issues/136

## [1.4.0]

- **Additions**:
  - AzureAD [#93][#93]
  - HTTP Digest access authentication [#94][#94]
  - IPB 2.x (Invision Power Board) [#95][#95]
  - Amazon AWS4-HMAC-SHA256 [#126][#126]
  - Bitcoin WIF private key (P2PKH), compressed [#126][#126]
  - Bitcoin WIF private key (P2PKH), uncompressed [#126][#126]
  - Bitcoin WIF private key (P2WPKH, Bech32), compressed [#126][#126]
  - Bitcoin WIF private key (P2WPKH, Bech32), uncompressed [#126][#126]
  - Bitcoin WIF private key (P2SH(P2WPKH)), compressed [#126][#126]
  - Bitcoin WIF private key (P2SH(P2WPKH)), uncompressed [#126][#126]
  - BLAKE2-512($pass.$salt) [#126][#126]
  - BLAKE2-512($salt.$pass) [#126][#126]
  - DPAPI masterkey file v1 (context 1 and 2) [#126][#126]
  - DPAPI masterkey file v1 (context 3) [#126][#126]
  - DPAPI masterkey file v2 (context 1 and 2) [#126][#126]
  - DPAPI masterkey file v2 (context 3) [#126][#126]
  - Exodus Desktop Wallet [#126][#126]
  - Flask Session Cookie [#126][#126]
  - KeePass 1 AES / without keyfile [#126][#126]
  - KeePass 1 Twofish / with keyfile [#126][#126]
  - KeePass 1 Twofish / without keyfile [#126][#126]
  - KeePass 2 AES / without keyfile [#126][#126]
  - Keepass 2 AES / with keyfile [#126][#126]
  - KeePass 2 ChaCha20 (KDBX 3) / without keyfile [#126][#126]
  - Kerberos 5 DB etype 17 [#126][#126]
  - Kerberos 5 DB etype 18 [#126][#126]
  - Kerberos 5 DB etype 3
  - Kerberos 5 TGT
  - Kerberos 4 TGT
  - PostgreSQL [#126][#126]
  - PostgreSQL SCRAM-SHA-256 [#126][#126]
  - Radmin3 [#126][#126]
  - Teamspeak 3 (channel hash) [#126][#126]
  - Terra Station Wallet [#126][#126]
  - bcrypt(sha512($pass)) / bcryptsha512 [#126][#126]
  - md5(sha1($pass).$salt) [#126][#126]
  - sha1($salt.sha1(utf16le($username).':'.utf16le($pass))) [#126][#126]
  - sha256($salt.sha256_raw($pass)) [#126][#126]
- **Enhancements**:
  - 7-zip: [#118][#118]
    - Add samples
    - Match variants with optional fields
  - WinZip: [#118][#118]
    - Add samples
    - Enhance regexp, 7th token can be at max `0x200000 * 4 * 2`
  - SecureZip: [#118][#118]
    - Add samples
  - PKZIP: [#118][#118]
    - Add samples
    - Add HC codes
    - Add several sub-variants
  - PostgreSQL CRAM (MD5): [#126][#126]
    - Add samples
    - Enhance regexp
  - many Kerberos 5 types:
    - Add samples
  - sha1 / RIPEMD-160
    - Enhance regexp
  - sha256(sha256_raw($pass)) / sha256($salt.sha256($pass)) / sha256(sha256($pass).$salt)
    - add HC
    - add sample
  - Hide some uncommon hash types (not removed but set as extended)
- **CLI**:
  - **Now can read hash from STDIN**
  - **New command to display hash samples**
- **Lib**:
  - **New class method to find hash samples**
- **Chore**:
  - Fix github action ruby workflow
- **Install**:
  - Can now be installed on Debian with a `.deb`
  - Can now be installed on Void Linux
- **Documentation**:
  - Comparison to houndsniff
  - Add some legal terms

[#118]:https://github.com/noraj/haiti/issues/118
[#93]:https://github.com/noraj/haiti/issues/93
[#94]:https://github.com/noraj/haiti/issues/94
[#95]:https://github.com/noraj/haiti/issues/95
[#126]:https://github.com/noraj/haiti/issues/126

## [1.3.0]

- Chore:
  - Add support for Ruby 3.1
  - Remove nodejs package lock
  - Update ruby version in Dockerfile
- Documentation:
  - Add `pass` unlock step to build docker (DockerHub) for the publishing page

## [1.2.3]

- Additions:
  - CRC-32C [#101][#101]
  - CRC64Jones [#101][#101]
  - MultiBit Wallet [#101][#101]
    - MultiBit Classic >= 0.5.19 .wallet
    - MultiBit Classic =< 0.5.18 .wallet
    - MultiBit HD wallet >= 0.5.0
  - MurmurHash3 [#101][#101]
  - Windows Hello PIN/Password [#101][#101]
  - VirtualBox [#89][#89]
    - VirtualBox (PBKDF2-HMAC-SHA256 & AES-128-XTS)
    - VirtualBox (PBKDF2-HMAC-SHA256 & AES-256-XTS)
  - SNMPv3 [#88][#88]
    - SNMPv3 HMAC-MD5-96/HMAC-SHA1-96
    - SNMPv3 HMAC-MD5-96
    - SNMPv3 HMAC-SHA1-96
    - SNMPv3 HMAC-SHA224-128
    - SNMPv3 HMAC-SHA256-192
    - SNMPv3 HMAC-SHA384-256
    - SNMPv3 HMAC-SHA512-384
  - Ruby on Rails Restful Auth (one round, no sitekey) [#91][#91]
  - NetNTLM (NT) [#92][#92]
    - NetNTLMv1 / NetNTLMv1+ESS (NT)
    - NetNTLMv2 (NT)
- Enhancements:
  - NetNTLM (vanilla)
    - Better regexp
    - Better description
    - Add samples
- Chore:
  - MFA required for gem release
  - Better publishing documentation
  - Add a rake task to count the number of hash types supported
- Dependencies:
  - Update to yard [v0.9.27](https://github.com/lsegal/yard/releases/tag/v0.9.27)
    - Move from Redcarpet to CommonMarker markdown provider

[#101]:https://github.com/noraj/haiti/issues/101
[#89]:https://github.com/noraj/haiti/issues/89
[#88]:https://github.com/noraj/haiti/issues/88
[#91]:https://github.com/noraj/haiti/issues/91
[#92]:https://github.com/noraj/haiti/issues/92

## [1.2.2]

- Additions:
  - MD6 (128, 256, 512) [#84][#84]
  - Apple iWork [#65][#65]
  - SQLCipher [#66][#66]
  - Stuffit5 [#67][#67]
  - Stargazer Stellar Wallet XLM [#71][#71]
  - bcrypt(md5($pass)) [#72][#72]
  - bcrypt(sha1($pass)) [#72][#72]
  - MurmurHash [#73][#73]
  - KNX IP Secure - Device Authentication Code [#74][#74]
  - Mozilla key4.db [#75][#75]
  - Mozilla key3.db [#75][#75]
  - OpenEdge Progress 4GL Encode [#76][#76]
  - AES-128-ECB NOKDF (PT = $salt, key = $pass) [#77][#77]
  - AES-192-ECB NOKDF (PT = $salt, key = $pass) [#77][#77]
  - AES-256-ECB NOKDF (PT = $salt, key = $pass) [#77][#77]
  - Bitwarden [#79][#79]
  - XMPP SCRAM PBKDF2-SHA1 [#80][#80]
  - Apple macOS Keychain [#81][#81]
  - PKCS#8 Private Keys (PBKDF2-HMAC-SHA1 + 3DES/AES) [#78][#78]
  - PKCS#8 Private Keys (PBKDF2-HMAC-SHA256 + 3DES/AES) [#78][#78]
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
[#73]:https://github.com/noraj/haiti/issues/73
[#74]:https://github.com/noraj/haiti/issues/74
[#75]:https://github.com/noraj/haiti/issues/75
[#76]:https://github.com/noraj/haiti/issues/76
[#77]:https://github.com/noraj/haiti/issues/77
[#79]:https://github.com/noraj/haiti/issues/79
[#80]:https://github.com/noraj/haiti/issues/80
[#81]:https://github.com/noraj/haiti/issues/81
[#78]:https://github.com/noraj/haiti/issues/78

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
