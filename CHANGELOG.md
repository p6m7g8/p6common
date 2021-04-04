# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [0.1.2](https://github.com/p6m7g8/p6common/compare/v0.1.1...v0.1.2) (2021-04-04)


### Features

* **api:** adds network.sh ([#124](https://github.com/p6m7g8/p6common/issues/124)) ([8f41767](https://github.com/p6m7g8/p6common/commit/8f417674751b817cf1b1a71832ddc20b34ecb757))
* **api:** adds p6_time() ([#119](https://github.com/p6m7g8/p6common/issues/119)) ([15cefd9](https://github.com/p6m7g8/p6common/commit/15cefd9db575212c261f38a2dd94476aa1535f0f))
* **langs:** adds rust ([#114](https://github.com/p6m7g8/p6common/issues/114)) ([23dd4bf](https://github.com/p6m7g8/p6common/commit/23dd4bf4d81f633b2a10a12d3334a5eeaea1b4fa))
* **release:** supports any default branch ([#115](https://github.com/p6m7g8/p6common/issues/115)) ([f29e396](https://github.com/p6m7g8/p6common/commit/f29e3969f6566494bb46838d3d69b4d1305d61a3))
* **table:** adds `p6_table_map_reduce(table)` ([#96](https://github.com/p6m7g8/p6common/issues/96)) ([2b3ff5f](https://github.com/p6m7g8/p6common/commit/2b3ff5f6844c1365de06f9cb0ffd39805aefaff9))
* **tests:** enable tests ([#39](https://github.com/p6m7g8/p6common/issues/39)) ([4dba0fb](https://github.com/p6m7g8/p6common/commit/4dba0fb729a21260f83df01d15afd8b21521e5c7))
* **yaml:** adds p6_yaml_eval() ([#118](https://github.com/p6m7g8/p6common/issues/118)) ([fc1d95e](https://github.com/p6m7g8/p6common/commit/fc1d95ea373bc0affa3ef25b114fe922d9d9c70b))


### Bug Fixes

* **api:** converts LC_CTYPE=C to LC_ALL=C for MacOS Big Sur ([#80](https://github.com/p6m7g8/p6common/issues/80)) ([51201fd](https://github.com/p6m7g8/p6common/commit/51201fde7fa58e1b668552b3c5aabce96a9d1a55))
* **lang:** fixes rust version string ([#117](https://github.com/p6m7g8/p6common/issues/117)) ([493cbfd](https://github.com/p6m7g8/p6common/commit/493cbfd7f8d858bf8e905648fc6a0557a65bf656))


* **deps:** bump ini from 1.3.5 to 1.3.8 ([b98e49e](https://github.com/p6m7g8/p6common/commit/b98e49ee7977f68a5f632849f2c2f8bddc816a98))
* **deps:** bump ini from 1.3.5 to 1.3.8 ([#48](https://github.com/p6m7g8/p6common/issues/48)) ([d89c930](https://github.com/p6m7g8/p6common/commit/d89c9308ca42f5a49b27b073ff941f80db0e50ee))
* **deps-dev:** bump @types/jest from 26.0.16 to 26.0.21 ([57dd65f](https://github.com/p6m7g8/p6common/commit/57dd65f4998ceaa15d8954aee6dedbdac6d57a8d))
* **deps-dev:** bump @types/jest from 26.0.16 to 26.0.21 ([#104](https://github.com/p6m7g8/p6common/issues/104)) ([e40ce43](https://github.com/p6m7g8/p6common/commit/e40ce4356bd5328c7b60f44ddae97098c41e98be))
* **deps-dev:** bump @types/jest from 26.0.21 to 26.0.22 ([fc4228e](https://github.com/p6m7g8/p6common/commit/fc4228e792a454b1ac70c89ceb33bb4876cf55bc))
* **deps-dev:** bump @types/jest from 26.0.21 to 26.0.22 ([#116](https://github.com/p6m7g8/p6common/issues/116)) ([fe7be36](https://github.com/p6m7g8/p6common/commit/fe7be368a7049ef5a9efd64b743206abb8d4a19f))
* **deps-dev:** bump @types/node from 10.17.48 to 10.17.55 ([6a05000](https://github.com/p6m7g8/p6common/commit/6a05000fa85e99dbb24d505cd1d336ec3e685864))
* **deps-dev:** bump @types/node from 10.17.48 to 10.17.55 ([#101](https://github.com/p6m7g8/p6common/issues/101)) ([4908be2](https://github.com/p6m7g8/p6common/commit/4908be29216d703fead84be75acaa73ad36b9f4e))
* **deps-dev:** bump @typescript-eslint/eslint-plugin ([e122dea](https://github.com/p6m7g8/p6common/commit/e122dea40ce6bdd7dec6dae9f106f72e87a96c4b))
* **deps-dev:** bump @typescript-eslint/eslint-plugin from 4.9.0 to 4.18.0 ([#95](https://github.com/p6m7g8/p6common/issues/95)) ([918c285](https://github.com/p6m7g8/p6common/commit/918c285a702b0322f4bd2e37f8b2597ee0b73ccb)), closes [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3178](https://github.com/p6m7g8/p6common/issues/3178) [#3160](https://github.com/p6m7g8/p6common/issues/3160) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3127](https://github.com/p6m7g8/p6common/issues/3127) [#3009](https://github.com/p6m7g8/p6common/issues/3009) [#3125](https://github.com/p6m7g8/p6common/issues/3125) [#3119](https://github.com/p6m7g8/p6common/issues/3119) [#3094](https://github.com/p6m7g8/p6common/issues/3094) [#3010](https://github.com/p6m7g8/p6common/issues/3010) [#3118](https://github.com/p6m7g8/p6common/issues/3118) [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3178](https://github.com/p6m7g8/p6common/issues/3178) [#3160](https://github.com/p6m7g8/p6common/issues/3160) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3009](https://github.com/p6m7g8/p6common/issues/3009) [#3125](https://github.com/p6m7g8/p6common/issues/3125) [#3119](https://github.com/p6m7g8/p6common/issues/3119) [#3094](https://github.com/p6m7g8/p6common/issues/3094) [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3152](https://github.com/p6m7g8/p6common/issues/3152)
* **deps-dev:** bump @typescript-eslint/parser from 4.18.0 to 4.19.0 ([a9ffc35](https://github.com/p6m7g8/p6common/commit/a9ffc35d3f6b8fbd7d582e353fbfa1cbe802d204))
* **deps-dev:** bump @typescript-eslint/parser from 4.18.0 to 4.19.0 ([#109](https://github.com/p6m7g8/p6common/issues/109)) ([50fe6f0](https://github.com/p6m7g8/p6common/commit/50fe6f0566ce64cce54f27f4b6111dab4f6efde8)), closes [#3177](https://github.com/p6m7g8/p6common/issues/3177) [#3163](https://github.com/p6m7g8/p6common/issues/3163) [#3189](https://github.com/p6m7g8/p6common/issues/3189) [#3176](https://github.com/p6m7g8/p6common/issues/3176) [#3201](https://github.com/p6m7g8/p6common/issues/3201)
* **deps-dev:** bump @typescript-eslint/parser from 4.9.0 to 4.18.0 ([c7395f4](https://github.com/p6m7g8/p6common/commit/c7395f41cda76e6446975eade4dbaf2bd2259800))
* **deps-dev:** bump @typescript-eslint/parser from 4.9.0 to 4.18.0 ([#103](https://github.com/p6m7g8/p6common/issues/103)) ([819e8a5](https://github.com/p6m7g8/p6common/commit/819e8a51d36d6610d6a1dd36c7df6601e44a6171)), closes [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3178](https://github.com/p6m7g8/p6common/issues/3178) [#3160](https://github.com/p6m7g8/p6common/issues/3160) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3127](https://github.com/p6m7g8/p6common/issues/3127) [#3009](https://github.com/p6m7g8/p6common/issues/3009) [#3125](https://github.com/p6m7g8/p6common/issues/3125) [#3119](https://github.com/p6m7g8/p6common/issues/3119) [#3094](https://github.com/p6m7g8/p6common/issues/3094) [#3010](https://github.com/p6m7g8/p6common/issues/3010) [#3118](https://github.com/p6m7g8/p6common/issues/3118) [#3045](https://github.com/p6m7g8/p6common/issues/3045) [#3001](https://github.com/p6m7g8/p6common/issues/3001)
* **deps-dev:** bump eslint from 7.15.0 to 7.22.0 ([d2fa4c1](https://github.com/p6m7g8/p6common/commit/d2fa4c169da053496433768471a73e202eb86810))
* **deps-dev:** bump eslint from 7.15.0 to 7.22.0 ([#105](https://github.com/p6m7g8/p6common/issues/105)) ([e6cffab](https://github.com/p6m7g8/p6common/commit/e6cffab6414f31da83edfda4384cdc6e1694f381))
* **deps-dev:** bump eslint-import-resolver-typescript ([2064165](https://github.com/p6m7g8/p6common/commit/206416501e0211d43fa61b9a67d6b3c5c8f6d87a))
* **deps-dev:** bump eslint-import-resolver-typescript from 2.3.0 to 2.4.0 ([#107](https://github.com/p6m7g8/p6common/issues/107)) ([517a028](https://github.com/p6m7g8/p6common/commit/517a028ace83d62fc9485d49495508ca96223a46)), closes [#67](https://github.com/p6m7g8/p6common/issues/67) [#57](https://github.com/p6m7g8/p6common/issues/57) [#69](https://github.com/p6m7g8/p6common/issues/69) [#67](https://github.com/p6m7g8/p6common/issues/67) [#57](https://github.com/p6m7g8/p6common/issues/57) [#69](https://github.com/p6m7g8/p6common/issues/69) [#69](https://github.com/p6m7g8/p6common/issues/69) [#67](https://github.com/p6m7g8/p6common/issues/67) [#63](https://github.com/p6m7g8/p6common/issues/63) [#57](https://github.com/p6m7g8/p6common/issues/57)
* **deps-dev:** bump jsii from 1.15.0 to 1.25.0 ([c973fdf](https://github.com/p6m7g8/p6common/commit/c973fdf378324306f958588cd2bfddb69628ee4f))
* **deps-dev:** bump jsii from 1.15.0 to 1.25.0 ([#99](https://github.com/p6m7g8/p6common/issues/99)) ([f70303a](https://github.com/p6m7g8/p6common/commit/f70303af24c5f926ddcf4e766ae68ece1581836e))
* **deps-dev:** bump jsii from 1.25.0 to 1.26.0 ([0e4139e](https://github.com/p6m7g8/p6common/commit/0e4139e8b4eeac2ebfcec06e3b9ba5011798dad2))
* **deps-dev:** bump jsii from 1.25.0 to 1.26.0 ([#111](https://github.com/p6m7g8/p6common/issues/111)) ([34957d8](https://github.com/p6m7g8/p6common/commit/34957d861480b25900ac460f7a4bfefe581f4756)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712) [#2716](https://github.com/p6m7g8/p6common/issues/2716)
* **deps-dev:** bump jsii-diff from 1.15.0 to 1.25.0 ([73c186e](https://github.com/p6m7g8/p6common/commit/73c186e70b020fac7a676512bedda699d9d2d476))
* **deps-dev:** bump jsii-diff from 1.15.0 to 1.25.0 ([#97](https://github.com/p6m7g8/p6common/issues/97)) ([2fcca69](https://github.com/p6m7g8/p6common/commit/2fcca694ba68255367656f8874d3c2d485d74e94)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2584](https://github.com/p6m7g8/p6common/issues/2584) [#2618](https://github.com/p6m7g8/p6common/issues/2618) [#2619](https://github.com/p6m7g8/p6common/issues/2619) [#2620](https://github.com/p6m7g8/p6common/issues/2620) [#2621](https://github.com/p6m7g8/p6common/issues/2621) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2696](https://github.com/p6m7g8/p6common/issues/2696) [#2674](https://github.com/p6m7g8/p6common/issues/2674) [#2644](https://github.com/p6m7g8/p6common/issues/2644) [#2605](https://github.com/p6m7g8/p6common/issues/2605) [#2586](https://github.com/p6m7g8/p6common/issues/2586) [#2559](https://github.com/p6m7g8/p6common/issues/2559) [#2555](https://github.com/p6m7g8/p6common/issues/2555) [#2522](https://github.com/p6m7g8/p6common/issues/2522) [#2501](https://github.com/p6m7g8/p6common/issues/2501) [#2450](https://github.com/p6m7g8/p6common/issues/2450)
* **deps-dev:** bump jsii-diff from 1.25.0 to 1.26.0 ([f4492ac](https://github.com/p6m7g8/p6common/commit/f4492aca5f8683c91399c9dd1c7bb326c73da2c1))
* **deps-dev:** bump jsii-diff from 1.25.0 to 1.26.0 ([#110](https://github.com/p6m7g8/p6common/issues/110)) ([26c9b3c](https://github.com/p6m7g8/p6common/commit/26c9b3c6281fee02dfed427a2429aebf62b8015e)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712)
* **deps-dev:** bump jsii-docgen from 1.4.109 to 1.8.67 ([82e865d](https://github.com/p6m7g8/p6common/commit/82e865df84076e320ea20dc3bc9e82a10d9cb6e6))
* **deps-dev:** bump jsii-docgen from 1.4.109 to 1.8.67 ([#108](https://github.com/p6m7g8/p6common/issues/108)) ([f41d1ba](https://github.com/p6m7g8/p6common/commit/f41d1ba2a2dd01f93f0b627f37dfc345b77b2f3b)), closes [#272](https://github.com/p6m7g8/p6common/issues/272) [#271](https://github.com/p6m7g8/p6common/issues/271) [#270](https://github.com/p6m7g8/p6common/issues/270) [#269](https://github.com/p6m7g8/p6common/issues/269) [#268](https://github.com/p6m7g8/p6common/issues/268)
* **deps-dev:** bump jsii-pacmak from 1.15.0 to 1.25.0 ([5c421da](https://github.com/p6m7g8/p6common/commit/5c421dafb356a990ed0e2772f01d5e3af5eceae3))
* **deps-dev:** bump jsii-pacmak from 1.15.0 to 1.25.0 ([#98](https://github.com/p6m7g8/p6common/issues/98)) ([5bb97e2](https://github.com/p6m7g8/p6common/commit/5bb97e2805c7512af009fea8b29ab0b3a0e8f820)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2584](https://github.com/p6m7g8/p6common/issues/2584) [#2618](https://github.com/p6m7g8/p6common/issues/2618) [#2619](https://github.com/p6m7g8/p6common/issues/2619) [#2620](https://github.com/p6m7g8/p6common/issues/2620) [#2621](https://github.com/p6m7g8/p6common/issues/2621) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2704](https://github.com/p6m7g8/p6common/issues/2704) [#2696](https://github.com/p6m7g8/p6common/issues/2696) [#2691](https://github.com/p6m7g8/p6common/issues/2691) [#2685](https://github.com/p6m7g8/p6common/issues/2685) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2650](https://github.com/p6m7g8/p6common/issues/2650) [#2674](https://github.com/p6m7g8/p6common/issues/2674) [#2645](https://github.com/p6m7g8/p6common/issues/2645) [#2644](https://github.com/p6m7g8/p6common/issues/2644)
* **deps-dev:** bump jsii-pacmak from 1.25.0 to 1.26.0 ([d5bdaac](https://github.com/p6m7g8/p6common/commit/d5bdaac0718d2b487e8a4b875c00ebf14d17a8c2))
* **deps-dev:** bump jsii-pacmak from 1.25.0 to 1.26.0 ([#112](https://github.com/p6m7g8/p6common/issues/112)) ([b86bef8](https://github.com/p6m7g8/p6common/commit/b86bef83e62fd14fa82f405922d91e6f4a4fe5bc)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2726](https://github.com/p6m7g8/p6common/issues/2726) [#2718](https://github.com/p6m7g8/p6common/issues/2718) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2442](https://github.com/p6m7g8/p6common/issues/2442) [#2671](https://github.com/p6m7g8/p6common/issues/2671) [#2508](https://github.com/p6m7g8/p6common/issues/2508) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2682](https://github.com/p6m7g8/p6common/issues/2682) [#2681](https://github.com/p6m7g8/p6common/issues/2681) [#2713](https://github.com/p6m7g8/p6common/issues/2713) [#2720](https://github.com/p6m7g8/p6common/issues/2720) [#2653](https://github.com/p6m7g8/p6common/issues/2653) [#2712](https://github.com/p6m7g8/p6common/issues/2712) [#2719](https://github.com/p6m7g8/p6common/issues/2719) [#2717](https://github.com/p6m7g8/p6common/issues/2717) [#2716](https://github.com/p6m7g8/p6common/issues/2716) [#2655](https://github.com/p6m7g8/p6common/issues/2655) [#2723](https://github.com/p6m7g8/p6common/issues/2723) [#2654](https://github.com/p6m7g8/p6common/issues/2654) [#2705](https://github.com/p6m7g8/p6common/issues/2705) [#2709](https://github.com/p6m7g8/p6common/issues/2709) [#2683](https://github.com/p6m7g8/p6common/issues/2683) [#2703](https://github.com/p6m7g8/p6common/issues/2703)
* **deps-dev:** bump jsii-release from 0.2.7 to 0.2.18 ([a982b79](https://github.com/p6m7g8/p6common/commit/a982b79d6c3e89b10e757c102e0a89f6741e1377))
* **deps-dev:** bump jsii-release from 0.2.7 to 0.2.18 ([#102](https://github.com/p6m7g8/p6common/issues/102)) ([1f6de2d](https://github.com/p6m7g8/p6common/commit/1f6de2d98fcd3fb7956f957317e2dbf2a765ca61)), closes [#34](https://github.com/p6m7g8/p6common/issues/34) [#32](https://github.com/p6m7g8/p6common/issues/32) [#29](https://github.com/p6m7g8/p6common/issues/29) [#27](https://github.com/p6m7g8/p6common/issues/27) [#23](https://github.com/p6m7g8/p6common/issues/23) [#35](https://github.com/p6m7g8/p6common/issues/35) [#34](https://github.com/p6m7g8/p6common/issues/34) [#32](https://github.com/p6m7g8/p6common/issues/32)
* **deps-dev:** bump standard-version from 9.0.0 to 9.1.1 ([b3b31c0](https://github.com/p6m7g8/p6common/commit/b3b31c0c62cc8325534bf62e369905732c051d2c))
* **deps-dev:** bump standard-version from 9.0.0 to 9.1.1 ([#100](https://github.com/p6m7g8/p6common/issues/100)) ([5b14126](https://github.com/p6m7g8/p6common/commit/5b141266a15da2758c5eb70f05580c0755b7bec4)), closes [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#630](https://github.com/p6m7g8/p6common/issues/630) [#677](https://github.com/p6m7g8/p6common/issues/677) [#678](https://github.com/p6m7g8/p6common/issues/678) [#679](https://github.com/p6m7g8/p6common/issues/679) [#651](https://github.com/p6m7g8/p6common/issues/651) [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#630](https://github.com/p6m7g8/p6common/issues/630) [#677](https://github.com/p6m7g8/p6common/issues/677) [#678](https://github.com/p6m7g8/p6common/issues/678) [#679](https://github.com/p6m7g8/p6common/issues/679) [#651](https://github.com/p6m7g8/p6common/issues/651) [#697](https://github.com/p6m7g8/p6common/issues/697) [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#696](https://github.com/p6m7g8/p6common/issues/696) [#662](https://github.com/p6m7g8/p6common/issues/662) [#689](https://github.com/p6m7g8/p6common/issues/689) [#661](https://github.com/p6m7g8/p6common/issues/661) [#618](https://github.com/p6m7g8/p6common/issues/618)
* **deps-dev:** bump ts-jest from 26.4.4 to 26.5.4 ([686446f](https://github.com/p6m7g8/p6common/commit/686446fec8b9cff16825c0b4b3c6bc142e1ebba0))
* **deps-dev:** bump ts-jest from 26.4.4 to 26.5.4 ([#106](https://github.com/p6m7g8/p6common/issues/106)) ([5dcd9e4](https://github.com/p6m7g8/p6common/commit/5dcd9e4b8d03e8dd1e9531300eb8957202818b7b))
* **json&yaml:** converts to jq/yq from awk ([#93](https://github.com/p6m7g8/p6common/issues/93)) ([08e8ead](https://github.com/p6m7g8/p6common/commit/08e8ead395383e11d458e36d42519372a08d4cfd))
* **release:** 0.1.1 ([8a90ffb](https://github.com/p6m7g8/p6common/commit/8a90ffbacfcd28eb874e4f35c2f5593f8431d7d0))
* **release:** 0.1.1 ([6d3714e](https://github.com/p6m7g8/p6common/commit/6d3714e2382326f6a081fe15b417211a8c9aaf59))
* **release:** 0.1.1 ([ae557df](https://github.com/p6m7g8/p6common/commit/ae557df71e9f90f11b761244f123a651e4f4d2a2))
* **release:** 0.1.1 ([8054cbd](https://github.com/p6m7g8/p6common/commit/8054cbdfa2c3b38987a1e8eeae014e2deb90388f))
* **release:** 0.1.1 ([cc0ab33](https://github.com/p6m7g8/p6common/commit/cc0ab33ca34ef7a3c23879e8cd9b99df851a9f36))
* **release:** 0.1.1 ([aeb6527](https://github.com/p6m7g8/p6common/commit/aeb65270471832ea40096761deb0ab143a096651))
* **release:** 0.1.1 ([733dc14](https://github.com/p6m7g8/p6common/commit/733dc14d4e3b257bec1cbe7f7a08fc4b90041598))
* **release:** 0.1.1 ([6dbf691](https://github.com/p6m7g8/p6common/commit/6dbf691978c2d2854473982bbcd21588f41f8849))
* **release:** 0.1.1 ([393128f](https://github.com/p6m7g8/p6common/commit/393128fce1ee1c152567ac3bae129931720c2140))
* **release:** 0.1.1 ([b1d3b6a](https://github.com/p6m7g8/p6common/commit/b1d3b6a26b124811e386d3518fd5b6c42d5a6336))
* **release:** 0.1.1 ([ccdb69b](https://github.com/p6m7g8/p6common/commit/ccdb69b40ceb9953d9b8aef9ac4d7b9c2bbc8959))
* **release:** 0.1.1 ([c82830b](https://github.com/p6m7g8/p6common/commit/c82830bd91f452180aa153f8f85b3e1ba005ef63))
* **release:** 0.1.1 ([e97498b](https://github.com/p6m7g8/p6common/commit/e97498b77d1a9a3488c319e3e71b12fd1b3c6ad8))
* **release:** 0.1.1 ([659263b](https://github.com/p6m7g8/p6common/commit/659263ba5539f1511336007ff7b6ae9618865c27))
* **release:** 0.1.1 ([73ed434](https://github.com/p6m7g8/p6common/commit/73ed4340c27489e15b22b76bff3bc94237dd8517))
* Coc -> .github ([c92f0a2](https://github.com/p6m7g8/p6common/commit/c92f0a268be2fe3207da879c770bee26439e6d52))
* the great vscode indent of 2021 ([#94](https://github.com/p6m7g8/p6common/issues/94)) ([1c4fd1f](https://github.com/p6m7g8/p6common/commit/1c4fd1f5d6e8976a91f363682eccba70106a64e4))
* **release:** 0.1.1 ([c8cf9f1](https://github.com/p6m7g8/p6common/commit/c8cf9f15847e13ce3cdad1d99260540d606eb317))
* **release:** 0.1.1 ([26bd50b](https://github.com/p6m7g8/p6common/commit/26bd50beca498b6e9e6b7f5c46b3198b24d10613))

### 0.1.1 (2021-03-28)


### Features

* **api:** adds p6_time() ([#119](https://github.com/p6m7g8/p6common/issues/119)) ([15cefd9](https://github.com/p6m7g8/p6common/commit/15cefd9db575212c261f38a2dd94476aa1535f0f))

### 0.1.1 (2021-03-27)


### Features

* **yaml:** adds p6_yaml_eval() ([#118](https://github.com/p6m7g8/p6common/issues/118)) ([fc1d95e](https://github.com/p6m7g8/p6common/commit/fc1d95ea373bc0affa3ef25b114fe922d9d9c70b))

### 0.1.1 (2021-03-27)


### Bug Fixes

* **lang:** fixes rust version string ([#117](https://github.com/p6m7g8/p6common/issues/117)) ([493cbfd](https://github.com/p6m7g8/p6common/commit/493cbfd7f8d858bf8e905648fc6a0557a65bf656))

### 0.1.1 (2021-03-26)


* **deps-dev:** bump @types/jest from 26.0.21 to 26.0.22 ([#116](https://github.com/p6m7g8/p6common/issues/116)) ([fe7be36](https://github.com/p6m7g8/p6common/commit/fe7be368a7049ef5a9efd64b743206abb8d4a19f))

### 0.1.1 (2021-03-24)


### Features

* **release:** supports any default branch ([#115](https://github.com/p6m7g8/p6common/issues/115)) ([f29e396](https://github.com/p6m7g8/p6common/commit/f29e3969f6566494bb46838d3d69b4d1305d61a3))

### 0.1.1 (2021-03-19)


* **deps-dev:** bump ts-jest from 26.4.4 to 26.5.4 ([#106](https://github.com/p6m7g8/p6common/issues/106)) ([5dcd9e4](https://github.com/p6m7g8/p6common/commit/5dcd9e4b8d03e8dd1e9531300eb8957202818b7b))

### 0.1.1 (2021-03-19)


* **deps-dev:** bump jsii-docgen from 1.4.109 to 1.8.67 ([#108](https://github.com/p6m7g8/p6common/issues/108)) ([f41d1ba](https://github.com/p6m7g8/p6common/commit/f41d1ba2a2dd01f93f0b627f37dfc345b77b2f3b)), closes [#272](https://github.com/p6m7g8/p6common/issues/272) [#271](https://github.com/p6m7g8/p6common/issues/271) [#270](https://github.com/p6m7g8/p6common/issues/270) [#269](https://github.com/p6m7g8/p6common/issues/269) [#268](https://github.com/p6m7g8/p6common/issues/268)

### 0.1.1 (2021-03-18)


* **deps-dev:** bump eslint from 7.15.0 to 7.22.0 ([#105](https://github.com/p6m7g8/p6common/issues/105)) ([e6cffab](https://github.com/p6m7g8/p6common/commit/e6cffab6414f31da83edfda4384cdc6e1694f381))

### 0.1.1 (2021-03-17)


* **deps:** bump ini from 1.3.5 to 1.3.8 ([#48](https://github.com/p6m7g8/p6common/issues/48)) ([d89c930](https://github.com/p6m7g8/p6common/commit/d89c9308ca42f5a49b27b073ff941f80db0e50ee))

### 0.1.1 (2021-03-17)


* **deps-dev:** bump standard-version from 9.0.0 to 9.1.1 ([#100](https://github.com/p6m7g8/p6common/issues/100)) ([5b14126](https://github.com/p6m7g8/p6common/commit/5b141266a15da2758c5eb70f05580c0755b7bec4)), closes [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#630](https://github.com/p6m7g8/p6common/issues/630) [#677](https://github.com/p6m7g8/p6common/issues/677) [#678](https://github.com/p6m7g8/p6common/issues/678) [#679](https://github.com/p6m7g8/p6common/issues/679) [#651](https://github.com/p6m7g8/p6common/issues/651) [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#630](https://github.com/p6m7g8/p6common/issues/630) [#677](https://github.com/p6m7g8/p6common/issues/677) [#678](https://github.com/p6m7g8/p6common/issues/678) [#679](https://github.com/p6m7g8/p6common/issues/679) [#651](https://github.com/p6m7g8/p6common/issues/651) [#697](https://github.com/p6m7g8/p6common/issues/697) [#695](https://github.com/p6m7g8/p6common/issues/695) [#660](https://github.com/p6m7g8/p6common/issues/660) [#696](https://github.com/p6m7g8/p6common/issues/696) [#662](https://github.com/p6m7g8/p6common/issues/662) [#689](https://github.com/p6m7g8/p6common/issues/689) [#661](https://github.com/p6m7g8/p6common/issues/661) [#618](https://github.com/p6m7g8/p6common/issues/618)

### 0.1.1 (2021-03-17)


* **deps-dev:** bump @types/node from 10.17.48 to 10.17.55 ([#101](https://github.com/p6m7g8/p6common/issues/101)) ([4908be2](https://github.com/p6m7g8/p6common/commit/4908be29216d703fead84be75acaa73ad36b9f4e))

### 0.1.1 (2021-03-17)


* **deps-dev:** bump jsii from 1.15.0 to 1.25.0 ([#99](https://github.com/p6m7g8/p6common/issues/99)) ([f70303a](https://github.com/p6m7g8/p6common/commit/f70303af24c5f926ddcf4e766ae68ece1581836e))

### 0.1.1 (2021-03-17)


* **deps-dev:** bump jsii-pacmak from 1.15.0 to 1.25.0 ([#98](https://github.com/p6m7g8/p6common/issues/98)) ([5bb97e2](https://github.com/p6m7g8/p6common/commit/5bb97e2805c7512af009fea8b29ab0b3a0e8f820)), closes [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2584](https://github.com/p6m7g8/p6common/issues/2584) [#2618](https://github.com/p6m7g8/p6common/issues/2618) [#2619](https://github.com/p6m7g8/p6common/issues/2619) [#2620](https://github.com/p6m7g8/p6common/issues/2620) [#2621](https://github.com/p6m7g8/p6common/issues/2621) [#2607](https://github.com/p6m7g8/p6common/issues/2607) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2632](https://github.com/p6m7g8/p6common/issues/2632) [#2692](https://github.com/p6m7g8/p6common/issues/2692) [#2622](https://github.com/p6m7g8/p6common/issues/2622) [#2617](https://github.com/p6m7g8/p6common/issues/2617) [#2647](https://github.com/p6m7g8/p6common/issues/2647) [#2689](https://github.com/p6m7g8/p6common/issues/2689) [#2649](https://github.com/p6m7g8/p6common/issues/2649) [#2048](https://github.com/p6m7g8/p6common/issues/2048) [#2636](https://github.com/p6m7g8/p6common/issues/2636) [#2637](https://github.com/p6m7g8/p6common/issues/2637) [#2638](https://github.com/p6m7g8/p6common/issues/2638) [#2596](https://github.com/p6m7g8/p6common/issues/2596) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [aws/aws-cdk-rfcs#292](https://github.com/aws/aws-cdk-rfcs/issues/292) [#2603](https://github.com/p6m7g8/p6common/issues/2603) [#2604](https://github.com/p6m7g8/p6common/issues/2604) [#2587](https://github.com/p6m7g8/p6common/issues/2587) [#2534](https://github.com/p6m7g8/p6common/issues/2534) [#22556](https://github.com/p6m7g8/p6common/issues/22556) [#2533](https://github.com/p6m7g8/p6common/issues/2533) [#1736](https://github.com/p6m7g8/p6common/issues/1736) [#2615](https://github.com/p6m7g8/p6common/issues/2615) [#2704](https://github.com/p6m7g8/p6common/issues/2704) [#2696](https://github.com/p6m7g8/p6common/issues/2696) [#2691](https://github.com/p6m7g8/p6common/issues/2691) [#2685](https://github.com/p6m7g8/p6common/issues/2685) [#2687](https://github.com/p6m7g8/p6common/issues/2687) [#2650](https://github.com/p6m7g8/p6common/issues/2650) [#2674](https://github.com/p6m7g8/p6common/issues/2674) [#2645](https://github.com/p6m7g8/p6common/issues/2645) [#2644](https://github.com/p6m7g8/p6common/issues/2644)

### 0.1.1 (2021-03-17)


### Features

* **table:** adds `p6_table_map_reduce(table)` ([#96](https://github.com/p6m7g8/p6common/issues/96)) ([2b3ff5f](https://github.com/p6m7g8/p6common/commit/2b3ff5f6844c1365de06f9cb0ffd39805aefaff9))

### 0.1.1 (2021-03-16)


* **deps-dev:** bump @typescript-eslint/eslint-plugin from 4.9.0 to 4.18.0 ([#95](https://github.com/p6m7g8/p6common/issues/95)) ([918c285](https://github.com/p6m7g8/p6common/commit/918c285a702b0322f4bd2e37f8b2597ee0b73ccb)), closes [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3178](https://github.com/p6m7g8/p6common/issues/3178) [#3160](https://github.com/p6m7g8/p6common/issues/3160) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3127](https://github.com/p6m7g8/p6common/issues/3127) [#3009](https://github.com/p6m7g8/p6common/issues/3009) [#3125](https://github.com/p6m7g8/p6common/issues/3125) [#3119](https://github.com/p6m7g8/p6common/issues/3119) [#3094](https://github.com/p6m7g8/p6common/issues/3094) [#3010](https://github.com/p6m7g8/p6common/issues/3010) [#3118](https://github.com/p6m7g8/p6common/issues/3118) [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3178](https://github.com/p6m7g8/p6common/issues/3178) [#3160](https://github.com/p6m7g8/p6common/issues/3160) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3009](https://github.com/p6m7g8/p6common/issues/3009) [#3125](https://github.com/p6m7g8/p6common/issues/3125) [#3119](https://github.com/p6m7g8/p6common/issues/3119) [#3094](https://github.com/p6m7g8/p6common/issues/3094) [#2864](https://github.com/p6m7g8/p6common/issues/2864) [#3164](https://github.com/p6m7g8/p6common/issues/3164) [#3133](https://github.com/p6m7g8/p6common/issues/3133) [#2847](https://github.com/p6m7g8/p6common/issues/2847) [#3152](https://github.com/p6m7g8/p6common/issues/3152)

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
