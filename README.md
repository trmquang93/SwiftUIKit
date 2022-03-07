# SwiftUIKit

[![CI Status](https://img.shields.io/travis/QuangTran/DeclarativeUI.svg?style=flat)](https://travis-ci.org/QuangTran/SwiftUIKit)
[![Version](https://img.shields.io/cocoapods/v/DeclarativeUI.svg?style=flat)](https://cocoapods.org/pods/DeclarativeUI)
[![License](https://img.shields.io/cocoapods/l/DeclarativeUI.svg?style=flat)](https://cocoapods.org/pods/DeclarativeUI)
[![Platform](https://img.shields.io/cocoapods/p/DeclarativeUI.svg?style=flat)](https://cocoapods.org/pods/DeclarativeUI)

<p align="center">🚀❤️ YOU WILL LOVE <b>UIKIT</b> MORE THAN EVER ❤️🚀</p>
<br/>
<p align="center"><b>Nothing is impossible!</b></p>
<p align="center">Build awesome responsive UIs even simpler than with SwiftUI <b>cause you already know everything</b>.</p>
<br/>

# Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Requirements

# Installation

SwiftUIKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftUIKit'
```
# Usage
## Constraints
```swift
override func viewDidLoad() {
    super.viewDidLoad()
    
    view.body {
        
        SafeArea(edges: [.bottom, .right]) {
            UIButton.actionButton
                .trailing(27)
                .bottom(31)
                .title("Get started", for: .normal)
                .onTap(self, action: #selector(buttonAction))
            
        }
        
        Stack(axis: .vertical) {
            
            UIImageView(imageNamed: "ls_yapcasialogomark").with
                .contentMode(.scaleAspectFit)
                .width(60)
                .height(70)
            
            UILabel("Lorem").with
                .font(.systemFont(ofSize: 36))
                .textColor(.tintColor)
            
            UILabel("consequat duis").with
                .textColor(.tintColor)
            
            UILabel("enim velit").with
                .textColor(.tintColor)
            
        }.with
            .alignment(.leading)
            .leading(60)
            .bottom(224)
    }
}
```
## Assignable to variable
```swift
//Declare variale
var startButton: UIButton!

//Then
SafeArea(edges: [.bottom, .right]) {
    startButton <~ UIButton()
        .trailing(27)
        .bottom(31)
        .title("Get started", for: .normal)
        .onTap(self, action: #selector(buttonAction))
    
}
```
## Extend views
Any view can be extend to have new chainable functions like below:
```swift
public extension With where T: UIView {
    func contentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        
        view.setContentHuggingPriority(priority, for: axis)
        
        return self
    }
    
    func contentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        
        view.setContentCompressionResistancePriority(priority, for: axis)
        
        return self
    }
}

```
Then use:
```swift
UILabel().with
    .contentHuggingPriority(.required, for: .horizontal)
    .textColor(.lightTextColor)
```
# Author

QuangTran, quangtm@unitvn.com

# License

SwiftUIKit is available under the MIT license. See the LICENSE file for more info.
