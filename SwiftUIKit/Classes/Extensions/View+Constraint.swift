//
//  View+Constraint.swift
//  SwiftUIKit
//
//  Created by QuangTran on 30/12/2021.
//

import Foundation
import UIKit

public extension View where T: UIView {
    func ratio(_ ratio: Float) -> Self {
        
        self.object.widthAnchor.constraint(equalTo: self.object.heightAnchor, multiplier: CGFloat(ratio)).isActive = true
        
        return self
    }
}

public extension View where T: UIView {
    
    func right(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: XAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: -constant,
            fromAnchor: .right,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func right(_ constant: Float) -> Self {
        return right(to: .right, constant)
    }
    
}

public extension View where T: UIView {
    
    func width(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: DimensionAnchor?, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .width,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func width(_ constant: Float) -> Self {
        return width(to: nil, constant)
    }
    
}

public extension View where T: UIView {
    
    func height(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: DimensionAnchor?, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .height,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func height(_ constant: Float) -> Self {
        return height(to: nil, constant)
    }
}

public extension View where T: UIView {
    
    func centerY(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: YAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .centerY,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func centerY(_ constant: Float) -> Self {
        return centerY(to: .centerY, constant)
    }
}

public extension View where T: UIView {
    
    func centerX(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: XAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .centerX,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func centerX(_ constant: Float) -> Self {
        return centerX(to: .centerX, constant)
    }
}

public extension View where T: UIView {
    
    func trailing(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: XAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: -constant,
            fromAnchor: .trailing,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func trailing(_ constant: Float) -> Self {
        return trailing(to: .trailing, constant)
    }
}

public extension View where T: UIView {
    
    func leading(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: XAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .leading,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func leading(_ constant: Float) -> Self {
        return leading(to: .leading, constant)
    }
}

public extension View where T:UIView {
    func left(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: XAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .left,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    
    func left(_ constant: Float) -> Self {
        let new = self.left(to: .left, constant)
        
        return new
    }
    
}

public extension View where T: UIView {
    
    func bottom(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: YAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: -constant,
            fromAnchor: .bottom,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    
    func bottom(_ constant: Float) -> Self {
        return bottom(to: .bottom, constant)
    }
}

public extension View where T: UIView {
    
    func top(_ relation: NSLayoutConstraint.Relation = .equal, to anchor: YAxisAnchor, _ constant: Float = 0) -> Self {
        let constraint = Constraint(
            constant: constant,
            fromAnchor: .top,
            toAnchor: anchor,
            relation: relation)
        
        self.object.layoutConstraints.append(constraint)
        
        return self
    }
    
    func top(_ constant: Float) -> Self {
        
        return top(to: .top, constant)
    }
}


public protocol LayoutTarget { }

extension CGFloat: LayoutTarget { }

extension Int: LayoutTarget { }

extension Double: LayoutTarget { }

extension Float: LayoutTarget { }

extension UIView: LayoutTarget { }

extension NSLayoutYAxisAnchor: LayoutTarget { }

extension NSLayoutXAxisAnchor: LayoutTarget { }

public enum LayoutAnchor {
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
