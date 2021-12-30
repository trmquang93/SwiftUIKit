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
//    public typealias View = Self
//
//}

public extension ViewObject {
    
    @discardableResult
    func makeLayout(@BodyBuilder content: (Self) -> [Any]) -> Self {
        let objects = content(self)
        var constraints: [NSLayoutConstraint] = []
        
        for object in objects {
            if let sv = object as? NSLayoutConstraint {
                constraints.append(sv)
            } else if let svs = object as? [NSLayoutConstraint] {
                constraints.append(contentsOf: svs)
            }
        }
        var copy = self
        copy.layoutConstraints = constraints
        return copy
    }
}


fileprivate struct SerializedKeys {
    static var layout = "layout"
}

extension ViewObject {
    var layoutConstraints: [NSLayoutConstraint] {
        get {
            objc_getAssociatedObject(self.object, &SerializedKeys.layout) as? [NSLayoutConstraint] ?? []
        }
        set {
            objc_setAssociatedObject(self.object, &SerializedKeys.layout, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
