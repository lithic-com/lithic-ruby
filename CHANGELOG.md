# Changelog

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
