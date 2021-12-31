//
//  ViewObject.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public protocol ViewObject {
    var object: UIView { get }
}

public protocol GenericViewObject: ViewObject {
    associatedtype View: UIView
    var view: View { get }
}

public extension GenericViewObject where Self: UIView {
    var view: Self {
        return self
    }
    
    var object: UIView { return view }
}


extension UIView: ViewObject {
    public var object: UIView { return self }
}

fileprivate struct SerializedKeys {
    static var layout = "layout"
    static var constraints = "constraints"
}

extension ViewObject {
    var layoutConstraints: [LayoutConstraint] {
        get {
            objc_getAssociatedObject(self.object, &SerializedKeys.layout) as? [LayoutConstraint] ?? []
        }
        set {
            objc_setAssociatedObject(self.object, &SerializedKeys.layout, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}


extension UIView {
    func activeContraints(inSubviews subviews: [UIView]) -> Self {
        var new = self
        
        var constraints: [LayoutConstraint] = []
        
        for sv in subviews {

            if sv.layoutConstraints.isEmpty {
                guard let superView = sv.superview else { continue }
                NSLayoutConstraint.activate {
                    sv.topAnchor.constraint(equalTo: superView.topAnchor)
                    sv.bottomAnchor.constraint(equalTo: superView.bottomAnchor)
                    sv.leadingAnchor.constraint(equalTo: superView.leadingAnchor)
                    sv.trailingAnchor.constraint(equalTo: superView.trailingAnchor)
                }
            } else {
                for constraint in sv.layoutConstraints {
                    if let view = constraint.target as? UIView {
                        guard view.hasCommonParent(with: sv) else {
                            constraints.append(constraint)
                            continue
                        }
                        activeConstraint(constraint, from: sv)
                    } else {
                        activeConstraint(constraint, from: sv)
                    }
                }
            }
        }
        
        new.layoutConstraints.append(contentsOf: constraints)
        
        return new
    }
    
    
    private func activeConstraint(_ constraint: LayoutConstraint, from view: UIView) {
        let targetView: UIView? = constraint.target as? UIView
        let otherView = targetView ?? self
        var constant: Float = 0
        
        if let number = constraint.target as? CGFloat {
            constant = Float(number)
        } else if let number = constraint.target as? Int {
            constant = Float(number)
        } else if let number = constraint.target as? Float {
            constant = Float(number)
        } else if let number = constraint.target as? Double {
            constant = Float(number)
        }
        
        
        switch constraint.anchor {
        case .leading:
            view.leadingAnchor.constraint(equalTo: otherView.leadingAnchor, constant: CGFloat(constant)).isActive = true
        case .trailing:
            view.trailingAnchor.constraint(equalTo: otherView.trailingAnchor, constant: CGFloat(-constant)).isActive = true
        case .left:
            view.leftAnchor.constraint(equalTo: otherView.leftAnchor, constant: CGFloat(constant)).isActive = true
        case .right:
            view.rightAnchor.constraint(equalTo: otherView.rightAnchor, constant: CGFloat(constant)).isActive = true
        case .top:
            view.topAnchor.constraint(equalTo: otherView.topAnchor, constant: CGFloat(constant)).isActive = true
        case .bottom:
            view.bottomAnchor.constraint(equalTo: otherView.bottomAnchor, constant: CGFloat(-constant)).isActive = true
        case .width:
            if let targetView = targetView {
                view.widthAnchor.constraint(equalTo: targetView.widthAnchor, constant: CGFloat(constant)).isActive = true
            } else {
                view.widthAnchor.constraint(equalToConstant: CGFloat(constant)).isActive = true
            }
        case .height:
            if let targetView = targetView {
                view.heightAnchor.constraint(equalTo: targetView.heightAnchor, constant: CGFloat(constant)).isActive = true
            } else {
                view.heightAnchor.constraint(equalToConstant: CGFloat(constant)).isActive = true
            }
        case .centerX:
            view.centerXAnchor.constraint(equalTo: otherView.centerXAnchor, constant: CGFloat(constant)).isActive = true
        case .centerY:
            view.centerYAnchor.constraint(equalTo: otherView.centerYAnchor, constant: CGFloat(constant)).isActive = true
        }
    }
}
