[<p align="center"><img height=256 alt="Foundation3" src="./logo.png"></p>](#Foundation3)

# Foundation3

![🐧 linux: ready](https://img.shields.io/badge/%F0%9F%90%A7%20linux-ready-red.svg)
![🐤 3.0: ready](https://img.shields.io/badge/🐤 3.0-ready-reallyed.svg)
[![Build Status](https://travis-ci.org/crossroadlabs/Foundation3.svg?branch=master)](https://travis-ci.org/crossroadlabs/Foundation3)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platform OS X | iOS | tvOS | watchOS | Linux](https://img.shields.io/badge/platform-OS X | iOS | tvOS | watchOS | Linux-orange.svg)
![Swift version](https://img.shields.io/badge/Swift-2.2 | 3.0-blue.svg)
[![GitHub license](https://img.shields.io/badge/license-Apache 2.0-lightgrey.svg)](https://raw.githubusercontent.com/crossroadlabs/Regex/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/crossroadlabs/Foundation3.svg)](https://github.com/crossroadlabs/Foundation3/releases)

## Swift Foundation Shims that mimic Swift 3.0 APIs. For thous who wants to maintain Swift multiple versions compatibility

## Goals

[<img align="left" src="https://raw.githubusercontent.com/crossroadlabs/Express/master/logo-full.png" hspace="20" height=128>](https://github.com/crossroadlabs/Express) Foundation3 library was mainly introduced to fulfill the needs of [Swift Express](https://github.com/crossroadlabs/Express) - web application server side framework for Swift. Now it's a part of Crossroad Labs Foundation.

Still we hope it will be useful for everybody else.

[Bother less with #if swift(>=3.0) ;)](#examples)

## Getting started

### Installation

#### [Package Manager](https://swift.org/package-manager/)

Add the following dependency to your [Package.swift](https://github.com/apple/swift-package-manager/blob/master/Documentation/Package.swift.md):

```swift
.Package(url: "https://github.com/crossroadlabs/Foundation3.git", majorVersion: 0)
```

Run ```swift build``` and build your app. Package manager is supported on OS X, but it's still recommended to be used on Linux only.

#### [Carthage](https://github.com/Carthage/Carthage)
Add the following to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile):

```
github "crossroadlabs/Foundation3"
```

Run `carthage update` and follow the steps as described in Carthage's [README](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

#### [CocoaPods](http://cocoapods.org/)
Add the following to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html):

```rb
pod 'Foundation3'
```

Make sure that you are integrating your dependencies using frameworks: add `use_frameworks!` to your Podfile. Then run `pod install`.

### Examples

#### Introduction:

OK, let's say you want to get `NSData` from `String`. There is a standard method  for it in `Foundation`. Still, the signatures are

```swift
func dataUsingEncoding(encoding: NSStringEncoding, allowLossyConversion: Bool = default) -> NSData?
```
and 

```swift
func data(usingEncoding encoding: NSStringEncoding, allowLossyConversion: Bool = default) -> NSData?
```

for `Swift 2.2` and `Swift 3.0` respectively. And this is in Mac only (in Linux it's even more of a mess).

The problem is that if you would like to maintain compatibility for several versions (which you better do, especially if you are a `Framework` developer as Swift is evolving and changing amazingly fast) your code will get all like this:

```swift
#if swift(>=3.0)
let data = string.data(usingEncoding: encoding, allowLossyConversion: allowLossyConversion)
#else
let data = string.dataUsingEncoding(encoding, allowLossyConversion: allowLossyConversion)
#endif
```

which obviously is not that pleasant.

The solution we have chosen for [Swift Express: The most advanced Swift Web Application Framework](https://github.com/crossroadlabs/Express) is to use the latest APIs everywhere (3.0 at the time of writing). Thus, we have created [Boilerplate](https://github.com/crossroadlabs/Boilerplate), [Foundation3](https://github.com/crossroadlabs/Foundation3) and [XCTest3](https://github.com/crossroadlabs/XCTest3) which mimic Swift 3.0 APIs where they are not available.

Effectively this makes the following code to work the same way everywhere where at least Swift 2.2 is available:

```swift
import Foundation3

let data = string.data(usingEncoding: encoding, allowLossyConversion: allowLossyConversion)
```

This is how we do [Express](https://github.com/crossroadlabs/Express) to be Swift 2.2 and 3.0 compatible at the same time.

#### Absent API?

OK, guys. We wrap Foundation APIs as we encounter them. Want more? We are glad to accept contributions. Let's make Swift 3.0 compatibility layer together.

### Keep your code clean ;)

## Contributing

To get started, <a href="https://www.clahub.com/agreements/crossroadlabs/Foundation3">sign the Contributor License Agreement</a>.

## [![Crossroad Labs](http://i.imgur.com/iRlxgOL.png?1) by Crossroad Labs](http://www.crossroadlabs.xyz/)