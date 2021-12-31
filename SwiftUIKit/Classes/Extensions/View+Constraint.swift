//
//  View+Constraint.swift
//  SwiftUIKit
//
//  Created by QuangTran on 30/12/2021.
//

import Foundation
import UIKit

public extension View {
    func top(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .top, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return new
    }
    
    func bottom(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .bottom, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return new
    }
    
    func left(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .left, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func right(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .right, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func leading(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .leading, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return new
    }
    
    func trailing(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .trailing, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func centerX(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .centerX, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func centerY(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .centerY, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func height(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .height, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
    
    func width(_ target: LayoutTarget) -> Self {
        let constraint = LayoutConstraint(anchor: .width, target: target)
        var new = self
        new.layoutConstraints.append(constraint)
        return self
    }
}


public protocol LayoutTarget { }

extension CGFloat: LayoutTarget { }

extension Int: LayoutTarget { }

extension Double: LayoutTarget { }

extension Float: LayoutTarget { }

extension UIView: LayoutTarget { }

enum LayoutAnchor {
    case leading
    case trailing
    case left
    case right
    case top
    case bottom
    case width
    case height
    case centerX
    case centerY
}


struct LayoutConstraint {
    var anchor: LayoutAnchor
    var target: LayoutTarget
    
    
    internal init(anchor: LayoutAnchor, target: LayoutTarget) {
        self.anchor = anchor
        self.target = target
    }
}

extension UIView {
    var parents: [UIView] {
        var views: [UIView] = []
        var supper: UIView? = self
        while let view = supper {
            views.append(view)
            supper = self.superview
        }
        return views
    }
    
    func firstCommonParent(with otherView: UIView) -> UIView? {
        let parents = self.parents
        
        for parent in otherView.parents {
            if parents.contains(parent) {
                return parent
            }
        }
        
        return nil
    }
    
    func hasCommonParent(with otherView: UIView) -> Bool {
        return firstCommonParent(with: otherView) != nil
    }
}


public extension UIView {
    var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    var borderWidth: CGFloat {
        get {
            layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    var borderColor: CGColor? {
        get {
            layer.borderColor
        }
        set {
            layer.borderColor = newValue
        }
    }
}
