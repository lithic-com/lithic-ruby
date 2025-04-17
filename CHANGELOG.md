# Changelog

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
