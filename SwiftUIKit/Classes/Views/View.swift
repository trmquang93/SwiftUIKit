//
//  View.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

@dynamicMemberLookup
public struct View<T: UIView> {
    let view: T
    
    var layoutConstraints: [LayoutConstraint] { view.layoutConstraints }
    
    public init(_ view: T) {
        self.view = view
    }
    
    
    public subscript<V>(dynamicMember member: WritableKeyPath<T, V>) -> ((V) -> View<T>) where T: UIView {
        
        @discardableResult
        func update(_ value: V) -> Self {
            self.view.update(member, value: value)
            return self
        }
        
        return { (newValue:V) in
            return update(newValue)
        }
    }
    
}

extension View: ViewObject {
    public var object: UIView { view }
    
    @discardableResult
    public func body(@BodyBuilder content: BodyBuildBlock) -> Self {
        object.body(content: content)
        
        return self
    }
    
    @discardableResult
    public func body(axis: NSLayoutConstraint.Axis, spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        object.body(axis: axis, spacing: spacing, content: content)
        return self
    }
    
    @discardableResult
    public func vertical(spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        
        object.vertical(spacing: spacing, content: content)
        return self
    }
    
    @discardableResult
    public func horizontal(spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        
        object.horizontal(spacing: spacing, content: content)
        
        return self
    }
}

extension View where T: UIStackView {
    @discardableResult
    public func arrange(@BodyBuilder content: BodyBuildBlock) -> Self {
        view.arrange(content: content)
        return self
    }
}


extension View: LayoutObject {
    public var leadingAnchor: NSLayoutXAxisAnchor {
        view.leadingAnchor
    }
    
    public var trailingAnchor: NSLayoutXAxisAnchor {
        view.trailingAnchor
    }
    
    public var leftAnchor: NSLayoutXAxisAnchor {
        view.leftAnchor
    }
    
    public var rightAnchor: NSLayoutXAxisAnchor {
        view.rightAnchor
    }
    
    public var topAnchor: NSLayoutYAxisAnchor {
        view.topAnchor
    }
    
    public var bottomAnchor: NSLayoutYAxisAnchor {
        view.bottomAnchor
    }
    
    public var widthAnchor: NSLayoutDimension {
        view.widthAnchor
    }
    
    public var heightAnchor: NSLayoutDimension {
        view.heightAnchor
    }
    
    public var centerXAnchor: NSLayoutXAxisAnchor {
        view.centerXAnchor
    }
    
    public var centerYAnchor: NSLayoutYAxisAnchor {
        view.centerYAnchor
    }
}
