# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [v0.2.0][0.2.0] - 2016-12-30
Reimplemented prototype using Reactive Programming principles and an architecture based on the Model-View-ViewModel pattern

### Added
- Framework dependencies: [RxSwift](https://github.com/ReactiveX/RxSwift)/RxCocoa, [RxRealm](https://github.com/RxSwiftCommunity/RxRealm)
- Change log

### Changed
- Updated RxSwift and RxCocoa from v3.0.1 to v3.1.0

## v0.1.0 - 2016-12-26
Initial prototype with basic search and display

### Added
- [CSV.swift](https://github.com/yaslab/CSV.swift) library for parsing the USDA's food data on first run
- Continuous integration (CI) build support with [Travis CI](https://travis-ci.org/robertwtucker/kfinder-ios)

### Changed
- Switched from [Carthage](https://github.com/Carthage/Carthage) to [CocoaPods](https://cocoapods.org/about) for dependency management
- Replaced CoreData with [Realm](https://realm.io/)

[Unreleased]: https://github.com/robertwtucker/kfinder-ios/compare/master...develop
[0.2.0]: https://github.com/robertwtucker/kfinder-ios/compare/v0.1.0...v0.2.0