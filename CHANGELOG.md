# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### 0.1.1 (2020-12-07)


### Features

* **tests:** enable tests ([#39](https://github.com/p6m7g8/p6common/issues/39)) ([4dba0fb](https://github.com/p6m7g8/p6common/commit/4dba0fb729a21260f83df01d15afd8b21521e5c7))

### 0.1.1 (2020-12-07)

### 0.1.1 (2020-12-06)


### Bug Fixes

* **actions:** fixes ([#37](https://github.com/p6m7g8/p6common/issues/37)) ([83aff8a](https://github.com/p6m7g8/p6common/commit/83aff8ad14f81a6430ee8e81a54505fc46e05076))

## [0.1.0](https://github.com/p6m7g8/p6common/compare/v0.0.2...v0.1.0) (2020-12-06)


### Features

* **api:** +`p6_word_unique()` ([#17](https://github.com/p6m7g8/p6common/issues/17)) ([878c933](https://github.com/p6m7g8/p6common/commit/878c9334a5117b19da1513540541a6db98f305f2))
* **api:** +p6_words_unique(),+p6_words_not() ([#19](https://github.com/p6m7g8/p6common/issues/19)) ([7d8246b](https://github.com/p6m7g8/p6common/commit/7d8246bb633e8fd296bcd4159fffa4c2cd0f2bca))
* **api:** centralize ::version() ([9034f3f](https://github.com/p6m7g8/p6common/commit/9034f3f7da32b14e60c18c1c2d699f30c96d7ba5))
* **api:** use `p6_run_code()`, doc doesn't depend on lint, temp simplify `_read()|_write()` ([#20](https://github.com/p6m7g8/p6common/issues/20)) ([c8d5b7f](https://github.com/p6m7g8/p6common/commit/c8d5b7f8568337928fbeef299db15d237a0f3fa1))
* **cicd:** GitHub Actions build workflow ([ba8c944](https://github.com/p6m7g8/p6common/commit/ba8c944c2afc40a88e4ad5ba345097c2cfaa40dc))
* **community:** adds CODE_OF_CONDUCT ([17dc8d8](https://github.com/p6m7g8/p6common/commit/17dc8d88ea56079723474abf8b685bb713b47179))
* **debug:** stubs `p6_time()` ([#25](https://github.com/p6m7g8/p6common/issues/25)) ([f2209c6](https://github.com/p6m7g8/p6common/commit/f2209c69d126d20574cbfdc3b9ab7798e89282d7))
* **github:** adds ISSUE_TEMPLATEs ([8db49c4](https://github.com/p6m7g8/p6common/commit/8db49c42d079c65a2b3200772702a92e52fac098))
* **openssl:** moved to p6openssl ([#18](https://github.com/p6m7g8/p6common/issues/18)) ([f0c158f](https://github.com/p6m7g8/p6common/commit/f0c158fcdb6f06a07a7cdf3fed423ec31f752e22))


### Bug Fixes

* **doc:** do not need p6common here ([#23](https://github.com/p6m7g8/p6common/issues/23)) ([87394ca](https://github.com/p6m7g8/p6common/commit/87394ca0dc805a8e13723b742a5cb3241aba1da5))
* **doc:** restore doc gens in script/doc.sh ([#16](https://github.com/p6m7g8/p6common/issues/16)) ([d9c5f72](https://github.com/p6m7g8/p6common/commit/d9c5f72dc7a0349b86bee07b5a8af44f32839053))
* **p6_env_export_un:** $k is not a variable, this never worked ([#24](https://github.com/p6m7g8/p6common/issues/24)) ([4c933af](https://github.com/p6m7g8/p6common/commit/4c933af780f8ea174bbc23c8f2a1d42ea3df5687))


* **community:** rely on the .github/ in the org ([#32](https://github.com/p6m7g8/p6common/issues/32)) ([42f94aa](https://github.com/p6m7g8/p6common/commit/42f94aa8ae18376c6f0bba6ee3c5358f777325cc))
* **doc:** renable readme ([#22](https://github.com/p6m7g8/p6common/issues/22)) ([d853ac7](https://github.com/p6m7g8/p6common/commit/d853ac735ae2f3905a0de6d08acb1e2a99685596))
* **docs:** fixes whitespace ([d11a590](https://github.com/p6m7g8/p6common/commit/d11a590aea72cb3921e418691b26ed8eda7d9436))
* **README:** fix module name expansion ([11a7c6b](https://github.com/p6m7g8/p6common/commit/11a7c6b28ae335521571d7bdd82b126ddb90d25b))
* **README:** fix module name expansion ([e8b3369](https://github.com/p6m7g8/p6common/commit/e8b3369cb646654020c608182e18a9b0bcf6d940))
* **README:** fixes module expansion, adds CodeCov and Synk badges ([#35](https://github.com/p6m7g8/p6common/issues/35)) ([afb8541](https://github.com/p6m7g8/p6common/commit/afb85419c350683a58fdd9677fbd35d1ee3db7bb))
* **README:** updates to template v2.0 ([e3ab0a7](https://github.com/p6m7g8/p6common/commit/e3ab0a72b5dd9c56a78319fb7e2fccc55dd5c77d))
* **semantic:** no longer needed, defaults are fine ([81196c9](https://github.com/p6m7g8/p6common/commit/81196c91de42bf95d4e2dff073f1cde29b1d02f4))

### [0.0.2](https://github.com/p6m7g8/p6common/compare/v0.0.1...v0.0.2) (2020-06-05)


### Features

* **cicd:** adds doc and lint ([#14](https://github.com/p6m7g8/p6common/issues/14)) ([8c4072b](https://github.com/p6m7g8/p6common/commit/8c4072b0151c5becaeeb68433aa9d89f6277a693))
* **cicd:** adds doc target ([#13](https://github.com/p6m7g8/p6common/issues/13)) ([429e22b](https://github.com/p6m7g8/p6common/commit/429e22bc76a3f0ff6eb114557604b753d0afdcc6))
* **cicd:** automates publishing the release/tag ([#11](https://github.com/p6m7g8/p6common/issues/11)) ([86d516f](https://github.com/p6m7g8/p6common/commit/86d516f6ce61f2f362cf2b8a9ddd01863a1bea60))
* **cicd:** supports VERSION env which can be overriden ([#12](https://github.com/p6m7g8/p6common/issues/12)) ([8ee1375](https://github.com/p6m7g8/p6common/commit/8ee13759ec589c3a3a404a53ea6cc1b464d38aa2))
* **Makefile:** standardizes phases, adds x- ([#15](https://github.com/p6m7g8/p6common/issues/15)) ([42ba586](https://github.com/p6m7g8/p6common/commit/42ba586fbaa1135a18a7510e001e0baf17226381))

### [0.0.1](https://github.com/p6m7g8/p6common/compare/v0.0.0...v0.0.1) (2020-05-29)


### Features

* **cicd:** split Makefile into Makefile.inc making it reusable ([#10](https://github.com/p6m7g8/p6common/issues/10)) ([bd61c3a](https://github.com/p6m7g8/p6common/commit/bd61c3a8a9b1c4d27e53f58517e1ad628707d08b))
* **Makefile:** adds Makefile ([#6](https://github.com/p6m7g8/p6common/issues/6)) ([d15722c](https://github.com/p6m7g8/p6common/commit/d15722c0b95f461a46786ea05e30306a07e394ac))
* **math:** impliments p6_math_inc() with default inc of 1 ([0ad3319](https://github.com/p6m7g8/p6common/commit/0ad3319c31dd0d4679ca3d118f61aa4eef35f85f))
* **optimizing:** if local, we know we've been bootstraped ([abaa8e4](https://github.com/p6m7g8/p6common/commit/abaa8e4dde8abca1c7d532cbc61e6b484ae127f9))
* **template:** replaces / with ^ for re markers ([a5b2a7d](https://github.com/p6m7g8/p6common/commit/a5b2a7da6c5999218eeecabc37c383f8af854187))
* **template:** simplifies parsing by not passing sed_res around ([0c98f22](https://github.com/p6m7g8/p6common/commit/0c98f22ee50ab87b7ad111c86e0178cf1e675aff))
* **transient:** wraps temp file ([147c7e0](https://github.com/p6m7g8/p6common/commit/147c7e00c6ed71abf2e2036c544359bf90e99020))
* **transients:** supports files in a transient dir too ([81e64da](https://github.com/p6m7g8/p6common/commit/81e64da42ffa88997ab8377eee959d6e28d380f7))
* **uri:** spruces up debug messaging ([5c6dd9e](https://github.com/p6m7g8/p6common/commit/5c6dd9ed4988ce19c04f4099719cd534fc313c14))


* **all:** adds variable args ([68333cf](https://github.com/p6m7g8/p6common/commit/68333cf2533ad36cf9ec54b19a6c22ba28c7c267))
* **cicd:** moves release taget code -> `scripts/release.sh` ([e796801](https://github.com/p6m7g8/p6common/commit/e7968012a86e7600e9f4e4f32a110144fca4404c))
* **mergify:** adds config ([a3d8f70](https://github.com/p6m7g8/p6common/commit/a3d8f70a1a9786a7f9532716994dbd76d6061db0))
* **README:** regen ([#4](https://github.com/p6m7g8/p6common/issues/4)) ([6bcb8c5](https://github.com/p6m7g8/p6common/commit/6bcb8c58aea253de1fb54820f4654109532fc79b))
* **README:** regenerates README.md ([7811280](https://github.com/p6m7g8/p6common/commit/7811280ae68640a82064b9bacb5ee8e63f1ea1ec))
* **README:** renames README.md -> README ([05ea02d](https://github.com/p6m7g8/p6common/commit/05ea02dc68ca4061b8a26e92a517345e6bb5d2b3))
* **release:** 0.0.1 ([86aaa83](https://github.com/p6m7g8/p6common/commit/86aaa83bb3a0d54dc4d131ee4a6c4e157adb4ef4))
* **semqntic:** adds semantic.yml ([#2](https://github.com/p6m7g8/p6common/issues/2)) ([d5b45c3](https://github.com/p6m7g8/p6common/commit/d5b45c3d8c1a04b28270f4d93a17330c6df3efe8))

# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.
