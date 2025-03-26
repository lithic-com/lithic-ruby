# Changelog

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
