# Unwrap

[![CI Status](http://img.shields.io/travis/muukii/Unwrap.svg?style=flat)](https://travis-ci.org/muukii/Unwrap)
[![Version](https://img.shields.io/cocoapods/v/Unwrap.svg?style=flat)](http://cocoapods.org/pods/Unwrap)
[![License](https://img.shields.io/cocoapods/l/Unwrap.svg?style=flat)](http://cocoapods.org/pods/Unwrap)
[![Platform](https://img.shields.io/cocoapods/p/Unwrap.svg?style=flat)](http://cocoapods.org/pods/Unwrap)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Syntax sugar for unwrapping while throwing error for nil

With this syntax sugar you can unwrap variables while throwing error for nil.
It's useful in closures/functions with throw.

```swift
func unwrapped(error: Error = UnwrapError.FailedToUnwrap) throws -> Optional.Wrapped {
```

## Usage

```swift
let bar: Int? = 3
```

```swift
let v: Int = try bar.unwrapped()
```

### Advanced

```swift
{ [weak self] in
    let _self = try self.unwrapped()
}
```

- RxSwift

```swift
operation
    .doOnNext { [weak self] i
        let _self = try self.unwrapped()
        _self.value = "abc"
    }    
```

## Requirements

## Installation

Unwrap is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Unwrap"
```

## Author

muukii, m@muukii.me

## License

Unwrap is available under the MIT license. See the LICENSE file for more info.
