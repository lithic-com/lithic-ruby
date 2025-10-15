# Changelog

## 0.1.0-alpha.52 (2025-10-15)

Full Changelog: [v0.1.0-alpha.51...v0.1.0-alpha.52](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.51...v0.1.0-alpha.52)

### Bug Fixes

* absolutely qualified uris should always override the default ([603aa2e](https://github.com/lithic-com/lithic-ruby/commit/603aa2e88449994118f1f5c19edc1accbcf57cb1))

## 0.1.0-alpha.51 (2025-10-14)

Full Changelog: [v0.1.0-alpha.50...v0.1.0-alpha.51](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.50...v0.1.0-alpha.51)

### Bug Fixes

* should not reuse buffers for `IO.copy_stream` interop ([f6e4858](https://github.com/lithic-com/lithic-ruby/commit/f6e485884b92ac962d4cd4c61e913aac40fbc175))

## 0.1.0-alpha.50 (2025-10-08)

Full Changelog: [v0.1.0-alpha.49...v0.1.0-alpha.50](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.49...v0.1.0-alpha.50)

### Features

* **api:** adds support for Auto-Collections ([9a83609](https://github.com/lithic-com/lithic-ruby/commit/9a8360991fa3f625725ca4055caea66cd6a1a46d))


### Chores

* ignore linter error for tests having large collections ([655be4b](https://github.com/lithic-com/lithic-ruby/commit/655be4b22393b0ded92424e58393993c6edbeb16))

## 0.1.0-alpha.49 (2025-09-30)

Full Changelog: [v0.1.0-alpha.48...v0.1.0-alpha.49](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.48...v0.1.0-alpha.49)

### Bug Fixes

* coroutine leaks from connection pool ([fa96625](https://github.com/lithic-com/lithic-ruby/commit/fa96625074db9b9d8f6ef6dc5a14c45b6faa42a3))

## 0.1.0-alpha.48 (2025-09-30)

Full Changelog: [v0.1.0-alpha.47...v0.1.0-alpha.48](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.47...v0.1.0-alpha.48)

### Features

* **api:** adds support for Auth Rule features ([f12343f](https://github.com/lithic-com/lithic-ruby/commit/f12343f949c28e3545a7e7add90238e8133d5916))

## 0.1.0-alpha.47 (2025-09-29)

Full Changelog: [v0.1.0-alpha.46...v0.1.0-alpha.47](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.46...v0.1.0-alpha.47)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([f52304d](https://github.com/lithic-com/lithic-ruby/commit/f52304dd7ef5d4dc716e173121f9d1f478275ec8))


### Chores

* allow fast-format to use bsd sed as well ([5022d53](https://github.com/lithic-com/lithic-ruby/commit/5022d5368e2e3bdb98b69edc72f0bef7a8da0abf))

## 0.1.0-alpha.46 (2025-09-26)

Full Changelog: [v0.1.0-alpha.45...v0.1.0-alpha.46](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.45...v0.1.0-alpha.46)

### Bug Fixes

* shorten multipart boundary sep to less than RFC specificed max length ([e5d086e](https://github.com/lithic-com/lithic-ruby/commit/e5d086ebb012d4e173072048d7ea3a5e7fc11a5f))

## 0.1.0-alpha.45 (2025-09-26)

Full Changelog: [v0.1.0-alpha.44...v0.1.0-alpha.45](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.44...v0.1.0-alpha.45)

### Features

* expose response headers for both streams and errors ([a0a6aba](https://github.com/lithic-com/lithic-ruby/commit/a0a6aba5882df60a0019557a7e7d38aba3fb7176))


### Bug Fixes

* **internal:** use null byte as file separator in the fast formatting script ([7260d7a](https://github.com/lithic-com/lithic-ruby/commit/7260d7a16edee1733a39556e554ed6f1901595de))


### Performance Improvements

* faster code formatting ([0367f27](https://github.com/lithic-com/lithic-ruby/commit/0367f2706e7903d3552ee18b7a75f62ece9fc927))


### Chores

* do not install brew dependencies in ./scripts/bootstrap by default ([23ebf5c](https://github.com/lithic-com/lithic-ruby/commit/23ebf5c02a0c168955ed2ebf1e7ef38d2d4eeda4))
* **docs:** small updates to doc strings on a few endpoints ([b7c4832](https://github.com/lithic-com/lithic-ruby/commit/b7c4832186d3ecddb47728496bf966e00e3c15eb))
* improve example values ([5c934d6](https://github.com/lithic-com/lithic-ruby/commit/5c934d6d52eccc89a72dfe7d5a850280b44ded75))

## 0.1.0-alpha.44 (2025-09-11)

Full Changelog: [v0.1.0-alpha.43...v0.1.0-alpha.44](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.43...v0.1.0-alpha.44)

### Features

* **api:** correct deprecation ([5f3c64b](https://github.com/lithic-com/lithic-ruby/commit/5f3c64b290779e9eeeae4bc6207adb702d10bcfb))

## 0.1.0-alpha.43 (2025-09-11)

Full Changelog: [v0.1.0-alpha.42...v0.1.0-alpha.43](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.42...v0.1.0-alpha.43)

### Features

* **api:** manual updates ([bde90fd](https://github.com/lithic-com/lithic-ruby/commit/bde90fdad11812628ad656e2a32c40d06184cbaf))

## 0.1.0-alpha.42 (2025-09-09)

Full Changelog: [v0.1.0-alpha.41...v0.1.0-alpha.42](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.41...v0.1.0-alpha.42)

### Features

* **api:** adds support for unpauseing external bank accounts ([ad64d5d](https://github.com/lithic-com/lithic-ruby/commit/ad64d5d1cbd89b6d908f6a414b80004de94cb168))

## 0.1.0-alpha.41 (2025-09-03)

Full Changelog: [v0.1.0-alpha.40...v0.1.0-alpha.41](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.40...v0.1.0-alpha.41)

### Features

* **api:** adds support for delegated KYB onboarding and more device details in 3DS Authentications ([37126bc](https://github.com/lithic-com/lithic-ruby/commit/37126bc6c52176bee9e1a6c645a4033d7b48b81a))


### Chores

* add json schema comment for rubocop.yml ([d5f9cf9](https://github.com/lithic-com/lithic-ruby/commit/d5f9cf9a5a4b9c2450c9ac65c5ec0708466c8331))
* sync repo ([bc9dd5c](https://github.com/lithic-com/lithic-ruby/commit/bc9dd5c574eb24959f3760ff9bd9f3c5240064cc))

## 0.1.0-alpha.40 (2025-07-15)

Full Changelog: [v0.1.0-alpha.39...v0.1.0-alpha.40](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.39...v0.1.0-alpha.40)

### Features

* **api:** adds Network Programs and Account/Card Sub-statuses ([b5e5077](https://github.com/lithic-com/lithic-ruby/commit/b5e5077794684767a425d31f746cee2ed69d8ba7))
* **api:** api update ([b8de03e](https://github.com/lithic-com/lithic-ruby/commit/b8de03e418647489f4e34b4a55ca4256f34c52fe))
* **api:** api update ([72d4aab](https://github.com/lithic-com/lithic-ruby/commit/72d4aabb27fe144144c10899e64c863785d6595b))

## 0.1.0-alpha.39 (2025-07-03)

Full Changelog: [v0.1.0-alpha.38...v0.1.0-alpha.39](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.38...v0.1.0-alpha.39)

### Features

* **api:** api update ([c096398](https://github.com/lithic-com/lithic-ruby/commit/c0963987f272b3c94603f5072a0e480b06d99a02))
* **api:** api update ([d85ee36](https://github.com/lithic-com/lithic-ruby/commit/d85ee366181cd1d8c2530049d4bf13bfd8f22d19))

## 0.1.0-alpha.38 (2025-07-02)

Full Changelog: [v0.1.0-alpha.37...v0.1.0-alpha.38](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.37...v0.1.0-alpha.38)

### Features

* **api:** add models for merchant_lock_parameters and conditional_3ds_action_parameters ([246c60f](https://github.com/lithic-com/lithic-ruby/commit/246c60f3befd7dfb5a7ee1cf3d048b9a7a0ce843))

## 0.1.0-alpha.37 (2025-07-02)

Full Changelog: [v0.1.0-alpha.36...v0.1.0-alpha.37](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.36...v0.1.0-alpha.37)

### Features

* **api:** api update ([95e6f93](https://github.com/lithic-com/lithic-ruby/commit/95e6f93cf300b9b2b96adaacc238da151d76bf06))


### Chores

* **ci:** only run for pushes and fork pull requests ([5e19b24](https://github.com/lithic-com/lithic-ruby/commit/5e19b24fcad22d51f01f3c26c82da029af648a3e))
* **internal:** allow streams to also be unwrapped on a per-row basis ([99c6f00](https://github.com/lithic-com/lithic-ruby/commit/99c6f001da13f61889cd29108f5ac6f49d875263))
* **internal:** manual updates ([05f1d5c](https://github.com/lithic-com/lithic-ruby/commit/05f1d5ceec90714c132c664035d658492c806653))

## 0.1.0-alpha.36 (2025-06-27)

Full Changelog: [v0.1.0-alpha.35...v0.1.0-alpha.36](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.35...v0.1.0-alpha.36)

### Bug Fixes

* sorbet type annotation on client's `environ` settings ([6cdd4cd](https://github.com/lithic-com/lithic-ruby/commit/6cdd4cd0fa6e0b69189bb3604a247b96fc39ed87))

## 0.1.0-alpha.35 (2025-06-27)

Full Changelog: [v0.1.0-alpha.34...v0.1.0-alpha.35](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.34...v0.1.0-alpha.35)

### Features

* **api:** introduce dedicated model for SpendLimitDuration ([47e4f42](https://github.com/lithic-com/lithic-ruby/commit/47e4f42231c996fe56ff2f681baaae2ac1c6c588))

## 0.1.0-alpha.34 (2025-06-26)

Full Changelog: [v0.1.0-alpha.33...v0.1.0-alpha.34](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.33...v0.1.0-alpha.34)

### Features

* **client:** adds support for on-demand Auth Rule Performance Reports ([54fcb64](https://github.com/lithic-com/lithic-ruby/commit/54fcb64ea4678afd8049d070b5f28873beeec3a4))


### Bug Fixes

* **ci:** release-doctor — report correct token name ([664a344](https://github.com/lithic-com/lithic-ruby/commit/664a344c803fc568d8011c18acb0246564a589ec))

## 0.1.0-alpha.33 (2025-06-18)

Full Changelog: [v0.1.0-alpha.32...v0.1.0-alpha.33](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.32...v0.1.0-alpha.33)

### Bug Fixes

* issue where we cannot mutate arrays on base model derivatives ([d9e95e7](https://github.com/lithic-com/lithic-ruby/commit/d9e95e745161befcf4908ea5fad28b5a9a30c131))

## 0.1.0-alpha.32 (2025-06-17)

Full Changelog: [v0.1.0-alpha.31...v0.1.0-alpha.32](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.31...v0.1.0-alpha.32)

### Features

* **api:** add CLOSED account state option and UNVERIFIED verification method ([a8eb01e](https://github.com/lithic-com/lithic-ruby/commit/a8eb01e4a8511742953953e86245fa434b923d01))
* **client:** adds endpoint to register an account number on a Financial Account ([82d726f](https://github.com/lithic-com/lithic-ruby/commit/82d726f88eb26013f71c7135ada25fbb9fd02cc4))


### Chores

* **ci:** enable for pull requests ([cf910d6](https://github.com/lithic-com/lithic-ruby/commit/cf910d68015385090f887f24ea27519a3ab12d75))
* **ci:** link to correct github repo ([e7e327a](https://github.com/lithic-com/lithic-ruby/commit/e7e327ad30f205f20ad2b00bd0d3314836a42269))

## 0.1.0-alpha.31 (2025-06-04)

Full Changelog: [v0.1.0-alpha.30...v0.1.0-alpha.31](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.30...v0.1.0-alpha.31)

### Features

* **client:** adds support for 3DS to Auth Rules ([e6fe981](https://github.com/lithic-com/lithic-ruby/commit/e6fe9812f9757af993396cb544240698b96e769a))


### Bug Fixes

* default content-type for text in multi-part formdata uploads should be text/plain ([e992bea](https://github.com/lithic-com/lithic-ruby/commit/e992beadf27a198a2a1d6259b3df2a094a3986b7))

## 0.1.0-alpha.30 (2025-06-02)

Full Changelog: [v0.1.0-alpha.29...v0.1.0-alpha.30](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.29...v0.1.0-alpha.30)

### Bug Fixes

* `to_sorbet_type` should not return branded types ([d044f89](https://github.com/lithic-com/lithic-ruby/commit/d044f89b4031bb1e24223df52626e7512da07ea3))


### Chores

* **api:** mark some methods as deprecated ([3e09fe4](https://github.com/lithic-com/lithic-ruby/commit/3e09fe4e86ee7d02a15f57917089a74b30876bda))

## 0.1.0-alpha.29 (2025-05-27)

Full Changelog: [v0.1.0-alpha.28...v0.1.0-alpha.29](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.28...v0.1.0-alpha.29)

### Bug Fixes

* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([8f652e8](https://github.com/lithic-com/lithic-ruby/commit/8f652e819994698ce6b0b895349abd230755a9d8))

## 0.1.0-alpha.28 (2025-05-23)

Full Changelog: [v0.1.0-alpha.27...v0.1.0-alpha.28](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.27...v0.1.0-alpha.28)

### Bug Fixes

* prevent rubocop from mangling `===` to `is_a?` check ([17d829b](https://github.com/lithic-com/lithic-ruby/commit/17d829bdf146635a77f48734396b7bab4ace5ec7))


### Chores

* **docs:** grammar improvements ([32caea3](https://github.com/lithic-com/lithic-ruby/commit/32caea327297944f1981f54b5c6180b63f938e1d))
* force utf-8 locale via `RUBYOPT` when formatting ([1b5a754](https://github.com/lithic-com/lithic-ruby/commit/1b5a754e631bf579fc6a79569ad847cc65ddff1c))
* use fully qualified names for yard annotations and rbs aliases ([2f72cee](https://github.com/lithic-com/lithic-ruby/commit/2f72cee42923b41ac739d0dd7b118152a36a8b93))

## 0.1.0-alpha.27 (2025-05-20)

Full Changelog: [v0.1.0-alpha.26...v0.1.0-alpha.27](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.26...v0.1.0-alpha.27)

### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([456477f](https://github.com/lithic-com/lithic-ruby/commit/456477fed1f46dd9ecfd278ddda29c642e5684f7))


### Chores

* refine Yard and Sorbet types and ensure linting is turned on for examples ([1c7093d](https://github.com/lithic-com/lithic-ruby/commit/1c7093dac0961af658685d5788c2b0dbe1871947))
* use sorbet union aliases where available ([68cbe7c](https://github.com/lithic-com/lithic-ruby/commit/68cbe7c8831d674ddb1080ca53ae1018966f1c87))
* whitespaces ([862a44f](https://github.com/lithic-com/lithic-ruby/commit/862a44f890c5b9d0034a99e2d09125f9a4551a1b))


### Documentation

* rewrite much of README.md for readability ([786647f](https://github.com/lithic-com/lithic-ruby/commit/786647f1e376849b800dfb59fdc941925590ab17))

## 0.1.0-alpha.26 (2025-05-14)

Full Changelog: [v0.1.0-alpha.25...v0.1.0-alpha.26](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.25...v0.1.0-alpha.26)

### Features

* **api:** new Funding Events and Card Web Provision API's ([1e3868e](https://github.com/lithic-com/lithic-ruby/commit/1e3868e233fb636a3b783160777b77715465ac13))
* bump default connection pool size limit to minimum of 99 ([07ebbb8](https://github.com/lithic-com/lithic-ruby/commit/07ebbb88612e4156407a0b0b6828f53c82adfe31))

## 0.1.0-alpha.25 (2025-05-13)

Full Changelog: [v0.1.0-alpha.24...v0.1.0-alpha.25](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.24...v0.1.0-alpha.25)

### Bug Fixes

* **internal:** update gemspec name ([b6bb2f8](https://github.com/lithic-com/lithic-ruby/commit/b6bb2f8f1379020fd87b8866074ad0a857986048))

## 0.1.0-alpha.24 (2025-05-12)

Full Changelog: [v0.1.0-alpha.23...v0.1.0-alpha.24](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.23...v0.1.0-alpha.24)

### Features

* **api:** manual updates ([2190d4d](https://github.com/lithic-com/lithic-ruby/commit/2190d4d4b9efc8b24cefeb0c8f6e011821f012a6))
* expose base client options as read only attributes ([6aa1141](https://github.com/lithic-com/lithic-ruby/commit/6aa1141978a57e8d138e182c7f5dd6f1135e2106))
* expose recursive `#to_h` conversion ([0d2635e](https://github.com/lithic-com/lithic-ruby/commit/0d2635eaf67be12441797b0d067b618b3e2cb076))
* support sorbet aliases at the runtime ([aeb0c42](https://github.com/lithic-com/lithic-ruby/commit/aeb0c4266234c86ac7b36b46ddbc6dc956faa599))


### Chores

* fix misc linting / minor issues ([5b17b81](https://github.com/lithic-com/lithic-ruby/commit/5b17b8150b6eeed2e347960e2f5e86093b391a97))


### Documentation

* remove or fix invalid readme examples ([a533c26](https://github.com/lithic-com/lithic-ruby/commit/a533c267af8a88c539880430ce6616a1387425ff))

## 0.1.0-alpha.23 (2025-05-07)

Full Changelog: [v0.1.0-alpha.22...v0.1.0-alpha.23](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.22...v0.1.0-alpha.23)

### Bug Fixes

* **internal:** ensure formatting always uses c.utf-8 locale ([00adb12](https://github.com/lithic-com/lithic-ruby/commit/00adb12df89392abd69ff031938647b65f124442))

## 0.1.0-alpha.22 (2025-05-06)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Bug Fixes

* **internal:** fix formatting script for macos ([3b3bd22](https://github.com/lithic-com/lithic-ruby/commit/3b3bd22c1ab59a11b6ebaccaced257c438c32236))


### Chores

* accept all nd-json mimetype variants ([7d129f3](https://github.com/lithic-com/lithic-ruby/commit/7d129f3059741d51af715fea9a65bd8709cb3fce))
* **internal:** codegen related update ([f7985e1](https://github.com/lithic-com/lithic-ruby/commit/f7985e133e55800ac5359fe241589e2467cff35b))
* revert ignoring Gemfile.lock ([6535e99](https://github.com/lithic-com/lithic-ruby/commit/6535e999c2c1f38e810a450fac5509ee25cad087))

## 0.1.0-alpha.21 (2025-05-05)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Bug Fixes

* **internals:** fix servers entry for /v2/auth_rules.get ([f044300](https://github.com/lithic-com/lithic-ruby/commit/f044300b2b4d74992dc130d3efaca6b008f68b91))


### Chores

* always check if current page is empty in `next_page?` ([2639138](https://github.com/lithic-com/lithic-ruby/commit/2639138c749229d1c0ac04d9fd1ca53975ae21ea))
* **internal:** codegen related update ([b17b5ff](https://github.com/lithic-com/lithic-ruby/commit/b17b5fff97f1c0cfe663b9d0f6e6bc4b7a3a42dc))
* **internal:** codegen related update ([2f1295d](https://github.com/lithic-com/lithic-ruby/commit/2f1295d95293693980db100f3ac3e1f8ebcdbcef))
* **internal:** codegen related update ([71e2903](https://github.com/lithic-com/lithic-ruby/commit/71e290348c375df646b5652f7272a754c4be946a))
* migrate away from deprecated `JSON#fast_generate` ([0467fc5](https://github.com/lithic-com/lithic-ruby/commit/0467fc56e3d96a22dc858d1d3e3319aee8d1b1d8))
* re-export top level models under library namespace ([95e1342](https://github.com/lithic-com/lithic-ruby/commit/95e1342a272493fcc1e1dc4b9c068e8cc892ba5a))
* remove Gemfile.lock during bootstrap ([f1aa36a](https://github.com/lithic-com/lithic-ruby/commit/f1aa36af83da55390a24ef01fa6a8e5bc3cb03f2))
* reorganize type aliases ([8c03b06](https://github.com/lithic-com/lithic-ruby/commit/8c03b06bf9568b3ae492043f304e0e6e01a53254))


### Documentation

* illustrate environmental defaults for auth variables ([a4de1a0](https://github.com/lithic-com/lithic-ruby/commit/a4de1a066712902df5e5ea62be42058315ded22d))
* **readme:** fix typo ([6fa42f9](https://github.com/lithic-com/lithic-ruby/commit/6fa42f9fdc086440416f2a4dc7eae9fcd9f0014f))

## 0.1.0-alpha.20 (2025-04-29)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Features

* **api:** adds new merchant lock Auth Rule ([388d8cb](https://github.com/lithic-com/lithic-ruby/commit/388d8cb18b0b89d44d9b2d0c2301e723c17c6d33))


### Chores

* add generator safe directory ([0cda408](https://github.com/lithic-com/lithic-ruby/commit/0cda40840420a00c792302dd07aa681d31680717))
* **internal:** annotate request options with type aliases in sorbet ([552a73d](https://github.com/lithic-com/lithic-ruby/commit/552a73db90724b38cbb9f0740d8bbbd6b8cbdc74))
* **internal:** remove unnecessary `rbi/lib` folder ([233630e](https://github.com/lithic-com/lithic-ruby/commit/233630e9abfd2f3f29e59d212a1cf6d5e3ec8cc2))
* loosen rubocop rules that don't always make sense ([e85bd6a](https://github.com/lithic-com/lithic-ruby/commit/e85bd6a6d208c2c05d76e101edc7627e23831ffc))
* more accurate type annotations and aliases ([347bbf6](https://github.com/lithic-com/lithic-ruby/commit/347bbf62b4a86b3e457b4ac591f526ba42f34e9c))

## 0.1.0-alpha.19 (2025-04-25)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Bug Fixes

* make a typo for `FilePart.content` ([4eb5bee](https://github.com/lithic-com/lithic-ruby/commit/4eb5bee30c1bfbc394092b72b338908643010f5a))

## 0.1.0-alpha.18 (2025-04-25)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Features

* support specifying content-type with FilePart class ([0cf245e](https://github.com/lithic-com/lithic-ruby/commit/0cf245eaa7321b8ae3ee08a9c585403cf654f9ca))
* support webmock for testing ([56900e6](https://github.com/lithic-com/lithic-ruby/commit/56900e694ecd63ff000e880f2cd6add9e5548e86))


### Bug Fixes

* ensure gem release is unaffected by renaming ([84a2f71](https://github.com/lithic-com/lithic-ruby/commit/84a2f7191fa58067637c050575de5552aec2cf09))


### Chores

* broadly detect json family of content-type headers ([2b4f4bc](https://github.com/lithic-com/lithic-ruby/commit/2b4f4bca7f025906e369ed32f4cd71e357cd79a8))
* **ci:** add timeout thresholds for CI jobs ([2f4319b](https://github.com/lithic-com/lithic-ruby/commit/2f4319b37459d2899350a1d05aec39a8134ac3e1))
* **ci:** only use depot for staging repos ([99e9f7d](https://github.com/lithic-com/lithic-ruby/commit/99e9f7d78c04ab805321dabe41d5431717fc5eb4))
* **ci:** run on more branches and use depot runners ([84743d4](https://github.com/lithic-com/lithic-ruby/commit/84743d4c86aeeadc23ef0cb025f77944e9822a4e))
* consistently use string in examples, even for enums ([c35c6f4](https://github.com/lithic-com/lithic-ruby/commit/c35c6f45e00d6eed30d43f8b4335c6761f3fe2f5))
* **internal:** improve response envelope unwrap functionality ([d2c37aa](https://github.com/lithic-com/lithic-ruby/commit/d2c37aa27246c9379a2400020047cd1c7761f03d))
* **internal:** minor type annotation improvements ([964cec1](https://github.com/lithic-com/lithic-ruby/commit/964cec1b7eb9904a6f643dcbcaaff3ae64276032))
* show truncated parameter docs in yard ([3d5f4b7](https://github.com/lithic-com/lithic-ruby/commit/3d5f4b7b7fc6d780cb19fe3cddac32306de1aaf2))

## 0.1.0-alpha.17 (2025-04-21)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### Bug Fixes

* **internals:** fix Card schema definition ([1a3d18b](https://github.com/lithic-com/lithic-ruby/commit/1a3d18be7e1817fad98013b032defbaa5663b354))

## 0.1.0-alpha.16 (2025-04-21)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### Features

* implement `#hash` for data containers ([7e1420b](https://github.com/lithic-com/lithic-ruby/commit/7e1420bfec9d254eacd77be001cefbad637c7f63))


### Bug Fixes

* **internal:** refresh schemas ([cb47b40](https://github.com/lithic-com/lithic-ruby/commit/cb47b40b1aa544d6e6f8fb3f27153ec03cfd6904))


### Chores

* documentation improvements ([6700ace](https://github.com/lithic-com/lithic-ruby/commit/6700aced32a478a1c301a3b7e3efee908c5d224e))
* explicitly mark apis public under `Internal` module ([b81d240](https://github.com/lithic-com/lithic-ruby/commit/b81d240b2048754f45ffe14c446490bce83bfce5))
* update README with recommended editor plugins ([80d5967](https://github.com/lithic-com/lithic-ruby/commit/80d5967d1e747cbd42e66a570f6520e241a64ba8))

## 0.1.0-alpha.15 (2025-04-18)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Features

* **api:** updates to Card definition for PCI clarity ([bb157ab](https://github.com/lithic-com/lithic-ruby/commit/bb157abbede60505c67651947fa8c583d17ac84a))


### Chores

* make sorbet enums easier to read ([77f23c5](https://github.com/lithic-com/lithic-ruby/commit/77f23c58d44b4c33b6a897ff988da2cb97965653))
* refine `#inspect` and `#to_s` for model classes ([7435187](https://github.com/lithic-com/lithic-ruby/commit/74351870d4768cd923ce9d88841ba8c84b6681d6))
* simplify yard annotations by removing most `@!parse` directives ([12c6882](https://github.com/lithic-com/lithic-ruby/commit/12c6882a7db0b45f91d8e4df7b0d41016567ad7a))
* use `@!method` instead of `@!parse` for virtual method type definitions ([a73c89a](https://github.com/lithic-com/lithic-ruby/commit/a73c89aa794ebfc771a7410603c10be08d1609d3))

## 0.1.0-alpha.14 (2025-04-17)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Bug Fixes

* always send idempotency header when specified as a request option ([919646f](https://github.com/lithic-com/lithic-ruby/commit/919646f1dea9c03ec4d752c7e62ee6d875d73651))


### Chores

* **internal:** contribute.md and contributor QoL improvements ([f7ff754](https://github.com/lithic-com/lithic-ruby/commit/f7ff754e6db71852203445c04ad17b0e64204864))

## 0.1.0-alpha.13 (2025-04-17)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Bug Fixes

* restore ability to configure server environment as string during client construction ([aec1e1f](https://github.com/lithic-com/lithic-ruby/commit/aec1e1fe50b86dfeac96adb6e2f7afd56c1e44e9))

## 0.1.0-alpha.12 (2025-04-17)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **client:** enable setting base URL from environment variable ([4f4585e](https://github.com/lithic-com/lithic-ruby/commit/4f4585e1557f60480629b83e6e2850f6b4a5dc98))


### Bug Fixes

* **client:** send correct HTTP path ([743cdc2](https://github.com/lithic-com/lithic-ruby/commit/743cdc28a16b5cfd724bf5b66cd699c840af8bad))


### Chores

* **internal:** always run post-processing when formatting when syntax_tree ([cfb9196](https://github.com/lithic-com/lithic-ruby/commit/cfb9196cccd8dea098fc52678e0eb2c777b0f900))
* **internal:** codegen related update ([c743e5d](https://github.com/lithic-com/lithic-ruby/commit/c743e5dd161480e7d3bf5305fb1135137b55d7de))
* **internal:** loosen internal type restrictions ([be1ae99](https://github.com/lithic-com/lithic-ruby/commit/be1ae999e5f9c36ed16367dfd9a9d0be4115b108))
* **internal:** minor touch ups on sdk internals ([a9ff4a6](https://github.com/lithic-com/lithic-ruby/commit/a9ff4a6e7da32387c68195b1bdbfe683f63435ff))
* **internal:** mostly README touch ups ([95ec3f1](https://github.com/lithic-com/lithic-ruby/commit/95ec3f10b027ca3be7dce6ffa2c45b9f8ba0b258))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([810686a](https://github.com/lithic-com/lithic-ruby/commit/810686a28f0a1d4710c632be010912b2ae41316f))
* make internal types pretty print ([eb5f0d9](https://github.com/lithic-com/lithic-ruby/commit/eb5f0d9f11b86370cfdca97b4a4716565a20c140))


### Documentation

* update documentation links to be more uniform ([6d246be](https://github.com/lithic-com/lithic-ruby/commit/6d246be6b7a3d16f4e8fb88980d2f53b45d85346))

## 0.1.0-alpha.11 (2025-04-11)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Bug Fixes

* inaccuracies in the README.md ([32837de](https://github.com/lithic-com/lithic-ruby/commit/32837de7e1a29ced61aa4459cd37def264246000))

## 0.1.0-alpha.10 (2025-04-09)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* **api:** manual updates ([1cacebf](https://github.com/lithic-com/lithic-ruby/commit/1cacebf87c011d14633c09bc7cabfe3adaa92881))


### Chores

* **internal:** reduce CI branch coverage ([23e51cc](https://github.com/lithic-com/lithic-ruby/commit/23e51cc9fb3b621407223b67bdebab4548ac5815))

## 0.1.0-alpha.9 (2025-04-09)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Bug Fixes

* **internal:** update release-please to use ruby strategy for README.md ([#83](https://github.com/lithic-com/lithic-ruby/issues/83)) ([dbea289](https://github.com/lithic-com/lithic-ruby/commit/dbea289d9e77902a14f3394a2657de5f59ec2147))


### Chores

* configure new SDK language ([510319f](https://github.com/lithic-com/lithic-ruby/commit/510319f4ea674725c4a1eb8c177b0a765c260545))
* ensure readme.md is bumped when release please updates versions ([#82](https://github.com/lithic-com/lithic-ruby/issues/82)) ([a1c3675](https://github.com/lithic-com/lithic-ruby/commit/a1c36757b893b169eec1ca51102ffa75181e3daa))
* **internal:** expand CI branch coverage ([#84](https://github.com/lithic-com/lithic-ruby/issues/84)) ([b2707e7](https://github.com/lithic-com/lithic-ruby/commit/b2707e7690ba6bf15f80fe1a0efe2d593ce1bc85))
* **internal:** version bump ([355bac7](https://github.com/lithic-com/lithic-ruby/commit/355bac7ac68d215af2432a193c29e22f184f6e77))

## 0.1.0-alpha.8 (2025-04-08)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* use Pathname alongside raw IO handles for file uploads ([#78](https://github.com/lithic-com/lithic-ruby/issues/78)) ([84571f8](https://github.com/lithic-com/lithic-ruby/commit/84571f8430878b7a0d65c038eb2593eb08e9eed2))


### Bug Fixes

* raise connection error for errors that result from HTTP transports ([#79](https://github.com/lithic-com/lithic-ruby/issues/79)) ([332efd2](https://github.com/lithic-com/lithic-ruby/commit/332efd2bc1d75a84212b6eda176b9841de113a96))


### Chores

* add README docs for using solargraph when installing gem from git ([#77](https://github.com/lithic-com/lithic-ruby/issues/77)) ([fda330a](https://github.com/lithic-com/lithic-ruby/commit/fda330adc0571aff714c5bc09065687689c3f95b))
* **internal:** version bump ([99ef2b9](https://github.com/lithic-com/lithic-ruby/commit/99ef2b996fc7909bb161e03a67340620f2bfbcdc))
* loosen const and integer coercion rules ([#80](https://github.com/lithic-com/lithic-ruby/issues/80)) ([5e9fcd4](https://github.com/lithic-com/lithic-ruby/commit/5e9fcd4f98224819930048224b2eb9c66f538f19))
* make client tests look prettier ([#76](https://github.com/lithic-com/lithic-ruby/issues/76)) ([aa7a696](https://github.com/lithic-com/lithic-ruby/commit/aa7a696cc89108e9a86bb4525ef3baa28e71a947))
* **tests:** improve enum examples ([#75](https://github.com/lithic-com/lithic-ruby/issues/75)) ([03c8cfb](https://github.com/lithic-com/lithic-ruby/commit/03c8cfbffc9da1edcd2c4ef0d9a7b18017ebcf65))

## 0.1.0-alpha.7 (2025-04-08)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* **api:** introduce TransactionSeries and update ShippingMethod fields ([#73](https://github.com/lithic-com/lithic-ruby/issues/73)) ([8c6e64e](https://github.com/lithic-com/lithic-ruby/commit/8c6e64e56b2019e391f85507eafecb7843c1c55d))


### Chores

* always fold up method bodies in sorbet type definitions ([#68](https://github.com/lithic-com/lithic-ruby/issues/68)) ([9fead9c](https://github.com/lithic-com/lithic-ruby/commit/9fead9caea79f55334725581a26263c93d7cd965))
* **internal:** codegen related update ([#71](https://github.com/lithic-com/lithic-ruby/issues/71)) ([0d0b308](https://github.com/lithic-com/lithic-ruby/commit/0d0b3082948af8910830955cef786d3d8ab5a3a4))
* **internal:** codegen related update ([#72](https://github.com/lithic-com/lithic-ruby/issues/72)) ([08e8290](https://github.com/lithic-com/lithic-ruby/commit/08e8290d145dc353c4574cd915cd6264c2e4b55f))
* **internal:** misc small improvements ([#65](https://github.com/lithic-com/lithic-ruby/issues/65)) ([be44033](https://github.com/lithic-com/lithic-ruby/commit/be44033edc9c1c846713f586aa5d527a01a355aa))
* **internal:** more concise handling of parameter naming conflicts ([#70](https://github.com/lithic-com/lithic-ruby/issues/70)) ([bc0cb73](https://github.com/lithic-com/lithic-ruby/commit/bc0cb7328d11dd3efb283443072de6838552eef7))
* **internal:** rubocop rules ([#67](https://github.com/lithic-com/lithic-ruby/issues/67)) ([b78e352](https://github.com/lithic-com/lithic-ruby/commit/b78e35233fa2cc7b94522dba21e479f359536e91))
* **internal:** run rubocop linter in parallel ([#66](https://github.com/lithic-com/lithic-ruby/issues/66)) ([28b8538](https://github.com/lithic-com/lithic-ruby/commit/28b85382d1f447c542cfd4b0b871b7e66180abf0))
* **internal:** version bump ([#63](https://github.com/lithic-com/lithic-ruby/issues/63)) ([60e1ca9](https://github.com/lithic-com/lithic-ruby/commit/60e1ca9a19b209531e7069d17fb6ecac0ad7c6ce))
* update yard comment formatting ([#69](https://github.com/lithic-com/lithic-ruby/issues/69)) ([a66a715](https://github.com/lithic-com/lithic-ruby/commit/a66a7155e5a8f88235ea8a23a471946164e3425f))

## 0.1.0-alpha.6 (2025-04-05)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* allow all valid `JSON` types to be encoded ([#60](https://github.com/lithic-com/lithic-ruby/issues/60)) ([38374fd](https://github.com/lithic-com/lithic-ruby/commit/38374fda2d025ac1b6625174619f83262b00c7ac))
* support query, header, and body params that have identical names ([#58](https://github.com/lithic-com/lithic-ruby/issues/58)) ([ac5c767](https://github.com/lithic-com/lithic-ruby/commit/ac5c7672360f3a91fbf1722340faa887df856b31))
* support solargraph generics ([#53](https://github.com/lithic-com/lithic-ruby/issues/53)) ([850275b](https://github.com/lithic-com/lithic-ruby/commit/850275bcbc2d23deda110645faea0e7fa5decae5))


### Bug Fixes

* converter should transform stringio into string where applicable ([#62](https://github.com/lithic-com/lithic-ruby/issues/62)) ([17f61ed](https://github.com/lithic-com/lithic-ruby/commit/17f61ed9dde1a981c145f24ba4d60f46d4f1db9c))


### Chores

* do not use literals for version in type definitions ([#54](https://github.com/lithic-com/lithic-ruby/issues/54)) ([eb2fb32](https://github.com/lithic-com/lithic-ruby/commit/eb2fb32424f211bdeb512139784b34615b5b639c))
* document LSP support in read me ([#57](https://github.com/lithic-com/lithic-ruby/issues/57)) ([ee03c93](https://github.com/lithic-com/lithic-ruby/commit/ee03c93a4e613bfc1a45fdd81bb67d0cca121661))
* **internal:** version bump ([#52](https://github.com/lithic-com/lithic-ruby/issues/52)) ([4209a43](https://github.com/lithic-com/lithic-ruby/commit/4209a435a3515bfa4d84bf2d39c8bc46dd580051))
* misc sdk polish ([#56](https://github.com/lithic-com/lithic-ruby/issues/56)) ([ff2a257](https://github.com/lithic-com/lithic-ruby/commit/ff2a257bf3329e9553dd641b4ecf2f73cdcf7f8e))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#61](https://github.com/lithic-com/lithic-ruby/issues/61)) ([83ac959](https://github.com/lithic-com/lithic-ruby/commit/83ac959d8057b053d05e2e063cbc91cb8acdde66))
* simplify internal utils ([#55](https://github.com/lithic-com/lithic-ruby/issues/55)) ([ba30a09](https://github.com/lithic-com/lithic-ruby/commit/ba30a09612a6b36d164b8feea2924e8444413ba5))

## 0.1.0-alpha.5 (2025-04-03)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#49](https://github.com/lithic-com/lithic-ruby/issues/49))
* remove top level type aliases to relocated classes ([#48](https://github.com/lithic-com/lithic-ruby/issues/48))

### Features

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#49](https://github.com/lithic-com/lithic-ruby/issues/49)) ([4d44818](https://github.com/lithic-com/lithic-ruby/commit/4d44818a8195fb8ec30e829cb513b07a09c9196f))
* remove top level type aliases to relocated classes ([#48](https://github.com/lithic-com/lithic-ruby/issues/48)) ([3ebfaa5](https://github.com/lithic-com/lithic-ruby/commit/3ebfaa59516d8f8b810df5441fed33778a5ee24c))


### Bug Fixes

* pre-release version string should match ruby, not semver conventions ([#51](https://github.com/lithic-com/lithic-ruby/issues/51)) ([cb04839](https://github.com/lithic-com/lithic-ruby/commit/cb048393543b826b166c590f63dbfec8019806dd))


### Chores

* demonstrate how to make undocumented requests in README ([#50](https://github.com/lithic-com/lithic-ruby/issues/50)) ([1b44d90](https://github.com/lithic-com/lithic-ruby/commit/1b44d9086244f14706dc69515b43b7278ae081bb))
* **internal:** version bump ([#45](https://github.com/lithic-com/lithic-ruby/issues/45)) ([fe7c581](https://github.com/lithic-com/lithic-ruby/commit/fe7c5819142eb7574afe8a5450d6b368b63564a3))
* move private classes into internal module ([#47](https://github.com/lithic-com/lithic-ruby/issues/47)) ([7b3792a](https://github.com/lithic-com/lithic-ruby/commit/7b3792a4f2f2eec24c83c0e5daca9bd96ba940d8))

## 0.1.0-alpha.4 (2025-04-02)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### ⚠ BREAKING CHANGES

* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#44](https://github.com/lithic-com/lithic-ruby/issues/44))

### Features

* add reference links in yard ([#37](https://github.com/lithic-com/lithic-ruby/issues/37)) ([75a7096](https://github.com/lithic-com/lithic-ruby/commit/75a70968f724c4551f8138d6e69ba38eddcd6c7a))
* implement `to_json` for base model ([#42](https://github.com/lithic-com/lithic-ruby/issues/42)) ([f83789b](https://github.com/lithic-com/lithic-ruby/commit/f83789b31150bb73f943e313f2126c8523a7920c))
* link response models to their methods in yard doc ([#39](https://github.com/lithic-com/lithic-ruby/issues/39)) ([29aca97](https://github.com/lithic-com/lithic-ruby/commit/29aca97f8d7754f182bb8843212623110a799969))


### Bug Fixes

* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#44](https://github.com/lithic-com/lithic-ruby/issues/44)) ([6c0fc8d](https://github.com/lithic-com/lithic-ruby/commit/6c0fc8dbdef637f03c4f80171c8f7d38590672b2))


### Chores

* extract error classes into own module ([#43](https://github.com/lithic-com/lithic-ruby/issues/43)) ([60bf116](https://github.com/lithic-com/lithic-ruby/commit/60bf1165c8c5939a884097a2892aa1c968d8d8fc))
* improve yard docs readability ([#38](https://github.com/lithic-com/lithic-ruby/issues/38)) ([c806392](https://github.com/lithic-com/lithic-ruby/commit/c806392316f3be153eda5386f4a886e1b0cfb1bd))
* **internal:** version bump ([#35](https://github.com/lithic-com/lithic-ruby/issues/35)) ([2e19979](https://github.com/lithic-com/lithic-ruby/commit/2e1997954c72bed364c674f019402257348be920))
* order client variables by "importance" ([#41](https://github.com/lithic-com/lithic-ruby/issues/41)) ([7005a9c](https://github.com/lithic-com/lithic-ruby/commit/7005a9c71ef4bab65384b81ea3805029699acbe0))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([#40](https://github.com/lithic-com/lithic-ruby/issues/40)) ([f6eaf95](https://github.com/lithic-com/lithic-ruby/commit/f6eaf9570f36f80d72fbbf10a2b5ff6c364d448d))

## 0.1.0-alpha.3 (2025-04-01)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Bug Fixes

* path interpolation template strings ([#34](https://github.com/lithic-com/lithic-ruby/issues/34)) ([b5a88e9](https://github.com/lithic-com/lithic-ruby/commit/b5a88e924ab324bf8cd12788715f7811ab23d6a0))


### Chores

* **internal:** version bump ([#31](https://github.com/lithic-com/lithic-ruby/issues/31)) ([3cf8b58](https://github.com/lithic-com/lithic-ruby/commit/3cf8b5839cbf0bdb1ed4311c8f62e87ce61c1de3))
* use fully qualified name in sorbet README example ([#33](https://github.com/lithic-com/lithic-ruby/issues/33)) ([c2400cf](https://github.com/lithic-com/lithic-ruby/commit/c2400cf3d3660df01708ef0dcb111475c16b6d23))

## 0.1.0-alpha.2 (2025-04-01)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/lithic-com/lithic-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **internal:** converter interface should recurse without schema ([#24](https://github.com/lithic-com/lithic-ruby/issues/24)) ([79e3bee](https://github.com/lithic-com/lithic-ruby/commit/79e3beed6781f642b3a92d8a8b8f87e58769b6d6))


### Bug Fixes

* switch to github compatible markdown engine ([#29](https://github.com/lithic-com/lithic-ruby/issues/29)) ([af478ad](https://github.com/lithic-com/lithic-ruby/commit/af478ad01947caaa51819d43b6e2913a77504f5e))


### Chores

* fix misc rubocop errors ([#30](https://github.com/lithic-com/lithic-ruby/issues/30)) ([d69480c](https://github.com/lithic-com/lithic-ruby/commit/d69480cbf8c90cf2c7a122889de178dd2b3954a5))
* internal codegen changes ([9865114](https://github.com/lithic-com/lithic-ruby/commit/9865114d89129552f76e5c81769e8214c2a09266))
* internal codegen changes ([ed29c22](https://github.com/lithic-com/lithic-ruby/commit/ed29c226a417d498b6afe65296a87e837e4016f7))
* **internal:** minor refactoring of utils ([#23](https://github.com/lithic-com/lithic-ruby/issues/23)) ([c20a18e](https://github.com/lithic-com/lithic-ruby/commit/c20a18e7c48cb57c4fd59a00d65c9db9f8da92f1))
* **internal:** remove workflow condition ([#22](https://github.com/lithic-com/lithic-ruby/issues/22)) ([9a7ca60](https://github.com/lithic-com/lithic-ruby/commit/9a7ca608e1a6f321f38ae3e3d2508d879e93a805))
* more accurate type annotations for SDK internals ([#27](https://github.com/lithic-com/lithic-ruby/issues/27)) ([952833a](https://github.com/lithic-com/lithic-ruby/commit/952833a2ad4b14ff490cf2bb33dcdc4630e93331))
* more aggressive tapioca detection logic for skipping compiler introspection ([#18](https://github.com/lithic-com/lithic-ruby/issues/18)) ([490e34a](https://github.com/lithic-com/lithic-ruby/commit/490e34a34f635430ad006d0ee31438139a0afc3a))
* re-order assignment lines to make unions easier to read ([#20](https://github.com/lithic-com/lithic-ruby/issues/20)) ([144c1f9](https://github.com/lithic-com/lithic-ruby/commit/144c1f900f5b8d6db914722f00070f76058c2377))
* relocate internal modules ([#26](https://github.com/lithic-com/lithic-ruby/issues/26)) ([8943495](https://github.com/lithic-com/lithic-ruby/commit/89434958a333ac17cb6c85c81328f1f15182507f))
* remove unnecessary & confusing module ([#25](https://github.com/lithic-com/lithic-ruby/issues/25)) ([ccb4da4](https://github.com/lithic-com/lithic-ruby/commit/ccb4da42fe8b083ebaf27a8172c05f883281cdee))
* update readme ([#28](https://github.com/lithic-com/lithic-ruby/issues/28)) ([084ab7e](https://github.com/lithic-com/lithic-ruby/commit/084ab7e139a0063233f7976973205ecaed7253d4))

## 0.1.0-alpha.1 (2025-03-26)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/lithic-com/lithic-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### ⚠ BREAKING CHANGES

* use tagged enums in sorbet type definitions ([#4](https://github.com/lithic-com/lithic-ruby/issues/4))
* support `for item in stream` style iteration on `Stream`s ([#1](https://github.com/lithic-com/lithic-ruby/issues/1))

### Features

* consistently accept `AnyHash` types in parameter positions in sorbet ([#9](https://github.com/lithic-com/lithic-ruby/issues/9)) ([834c2d1](https://github.com/lithic-com/lithic-ruby/commit/834c2d14e78c83e2beb2675d7bd4a8da32aca4be))
* prevent tapioca from introspecting the gem internals ([#8](https://github.com/lithic-com/lithic-ruby/issues/8)) ([c316306](https://github.com/lithic-com/lithic-ruby/commit/c316306e82fd376e92e54844661dc0dc3b901a7f))
* support `for item in stream` style iteration on `Stream`s ([#1](https://github.com/lithic-com/lithic-ruby/issues/1)) ([00f0df1](https://github.com/lithic-com/lithic-ruby/commit/00f0df1b9d34605a6c40b52dd35ca0603e7876ac))
* use tagged enums in sorbet type definitions ([#4](https://github.com/lithic-com/lithic-ruby/issues/4)) ([07a5b4d](https://github.com/lithic-com/lithic-ruby/commit/07a5b4dab5793761618a02a0ea791e222973b0f8))


### Bug Fixes

* pages should be able to accept non-converter models ([#12](https://github.com/lithic-com/lithic-ruby/issues/12)) ([f36c4b6](https://github.com/lithic-com/lithic-ruby/commit/f36c4b62aa3bc4f783110bfd635feba14bb0891e))
* resolve tapioca derived sorbet errors ([#3](https://github.com/lithic-com/lithic-ruby/issues/3)) ([e5d8b78](https://github.com/lithic-com/lithic-ruby/commit/e5d8b78632b38867f2cfa79aaf1ba06f0a5e0e73))
* yard example tag formatting ([#6](https://github.com/lithic-com/lithic-ruby/issues/6)) ([b5e3b7f](https://github.com/lithic-com/lithic-ruby/commit/b5e3b7feda9be01ee2026a4093c49e406af67e96))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([#5](https://github.com/lithic-com/lithic-ruby/issues/5)) ([83a2861](https://github.com/lithic-com/lithic-ruby/commit/83a286144f2469ec0d90c93144201e8626656543))
* add type annotations for enum and union member listing methods ([#7](https://github.com/lithic-com/lithic-ruby/issues/7)) ([86672a1](https://github.com/lithic-com/lithic-ruby/commit/86672a1faea539aaf14c637f48c63205e8588734))
* **api:** new attribute targets for Auth Rules and new Financial Account State schema ([#16](https://github.com/lithic-com/lithic-ruby/issues/16)) ([c8ef1a1](https://github.com/lithic-com/lithic-ruby/commit/c8ef1a11fef96c3e806d0a696c8ac901e3eddbdd))
* disable dangerous rubocop auto correct rule ([#14](https://github.com/lithic-com/lithic-ruby/issues/14)) ([e31dbfb](https://github.com/lithic-com/lithic-ruby/commit/e31dbfb6c109e1777c7ded5d6d6e77ca3293990d))
* fix typos ([#17](https://github.com/lithic-com/lithic-ruby/issues/17)) ([258055f](https://github.com/lithic-com/lithic-ruby/commit/258055fc6d742413ab4e6dc845d5cdad410f3ce9))
* more readable output when tests fail ([#15](https://github.com/lithic-com/lithic-ruby/issues/15)) ([f231c30](https://github.com/lithic-com/lithic-ruby/commit/f231c3096d9e666896d514ec6fb9b5863c5acd86))
* recursively accept `AnyHash` for `BaseModel`s in arrays and hashes ([#10](https://github.com/lithic-com/lithic-ruby/issues/10)) ([8852810](https://github.com/lithic-com/lithic-ruby/commit/8852810fa3e990794d5e655bbfe953132bcb6614))
* reduce verbosity in type declarations ([#13](https://github.com/lithic-com/lithic-ruby/issues/13)) ([354c40b](https://github.com/lithic-com/lithic-ruby/commit/354c40b1dc4a23446314176f768322ea15d9abc9))
* switch to prettier looking sorbet annotations ([#11](https://github.com/lithic-com/lithic-ruby/issues/11)) ([80c80b2](https://github.com/lithic-com/lithic-ruby/commit/80c80b2eb0bd921b9a029253484d3bf61724cea2))
