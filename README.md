# RProgressHud

RProgressHud is flexible and lightweight progress indicator for Swift 4 & Swift 5 on iOS. RProgressHud is available under the terms of the MIT license. This Git repository contains the library's Core part.

## How to get started

First, install RProgressHud via [CocoaPods](https://cocoapods.org/), [Carthage](https://github.com/Carthage/Carthage) or manually. 

## CocoaPods

```
platform :ios, ’13.0’

target 'SampleProject' do
  use_frameworks!
  pod 'RProgressHud', '0.1.0'
end
```

## Carthage

Carthage is a lightweight dependency manager for Swift and Objective-C. It leverages CocoaTouch modules and is less invasive than CocoaPods.
To install with Carthage, follow the instruction on Carthage
Cartfile

```
github "RahulMaithani/RProgressHud" ~> 0.2.0
```

## Usage

Usually, you can simply import RProgressHud.

```swift
import RProgressHud
```

You can use RProgressHud while running time-consuming tasks. The recommended way to use RProgressHud is to start the spinner and it automatically prevents the user from interacting with the UI.

Use the following code to start the spinner and disable UI interactions for the user:

```swift
RProgressHud.shared.startHud(view: self.view)
```

Use the following code to stop the spinner and enable UI interaction for the user:

```swift
RProgressHud.shared.stopHud(view: self.view)
```

## Requirements
The current version of RProgressHud requires:
* Xcode 12 or later
* Swift 5.3 or later
* iOS 9 or later

## License
**RProgressHud** is released under the [MIT License](https://github.com/RahulMaithani/RProgressHud/blob/master/LICENSE).
