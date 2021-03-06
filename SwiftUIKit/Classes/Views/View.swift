//
//  View.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

extension With where T: UIView {
    
    public var view: T { return object }
}

extension With where T: UIView {
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

extension With where T: UIStackView {
    @discardableResult
    public func arrange(@BodyBuilder content: BodyBuildBlock) -> Self {
        object.arrange(content: content)
        return self
    }
}
