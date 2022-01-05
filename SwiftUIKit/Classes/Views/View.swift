//
//  View.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public typealias View = With

extension View where T: UIView {
    
    var view: T { return object }
}

extension View where T: UIView {
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
        object.arrange(content: content)
        return self
    }
}
