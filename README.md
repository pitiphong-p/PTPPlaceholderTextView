# PTPPlaceholderTextView
A simple naive implementation of UITextView subclass to support *`placeholder`* text rendering in UITextView. This `PTPPlaceholderTextView` comes with IBDesignable, IBInspectable and also UIAppearance support.

# Requirements
- iOS 8+
- Swift 3.0+

This requirement is due to the Swift runtime is available on iOS 8 or later. If you want to use this `PTPPlaceholderTextView`, please feel free to contact me. I also have the Objective-C implementation.

# Installation
## Manaully
This project comes with built in *`PTPPlaceholderTextView framework`* target. You can drag `PTPPlaceholderTextView.xcproj` file into your project, add `PTPPlaceholderTextView framework` target as a target dependency and link/embed that framework. and Voila!!!
````swift
import PTPPlaceholderTextView
````
Or you can just add `PTPPlaceholderTextView.swift` into your project.
## CocoaPod
Add the following to your Podfile
````ruby
pod 'PTPPlaceholderTextView'
use_frameworks!
````
## Swift 2.2
You can use PTPPlaceholderTextView in Swift 2.2 by checking out tag `0.6.1`

## Swift 4.0
You can use PTPPlaceholderTextView in Swift 4.0 (which is currently in Beta) by checking out branch `swift-4`

# Usage
You can set the placholder text via a *`placeholder`* property
````swift
textview.placeholder = "Placeholder titile"
````
Placeholder text color via a *`placeholderColor`* property
````swift
textview.placeholderColor = UIColor.redColor()
````
Also you can use an `UIAppearance` proxy to set the default placeholder text color
````swift
PTPPlaceholderTextView.appearance().placeholderColor = UIColor.redColor()
````
or
````swift
PTPPlaceholderTextView.appearanceWhenContainedInInstancesOfClasses([ViewController.self]).placeholderColor = UIColor.redColor()
````
And because `PTPPlaceholderTextView` comes with `IBDesignable` and `IBInspectable` support. `PTPPlaceholderTextView` objects also render its preview in your `storyboard`

# Demo App
`PTPPlaceholderTextView` project comes with a demo app target. You can see `PTPPlaceholderTextView` in action by just running this demo app target. The demo app comes with `Main.storyboard` which also demostate the `IBDesignable` functionality of `PTPPlaceholderTextView`

# Contact
Pitiphong Phongpattranont
- [@pitiphong_p on Twitter] (https://twitter.com/pitiphong_p)

# License
`PTPPlaceholderTextView` is released under an MIT License.  
Copyright © 2015-present Pitiphong Phongpattranont.
