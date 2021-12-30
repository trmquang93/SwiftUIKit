//
//  UIEdgeInsets+Ext.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public extension UIEdgeInsets {
    func top(_ value: CGFloat) -> Self {
        var new = self
        new.top = value
        return new
    }
    
    func bottom(_ value: CGFloat) -> Self {
        var new = self
        new.bottom = value
        return new
    }
    
    func left(_ value: CGFloat) -> Self {
        var new = self
        new.left = value
        return new
    }
    
    func right(_ value: CGFloat) -> Self {
        var new = self
        new.right = value
        return new
    }
}

public extension UIEdgeInsets {
    static func top(_ value: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: value, left: 0, bottom: 0, right: 0)
    }
    
    static func bottom(_ value: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: value, right: 0)
    }
    
    static func left(_ value: CGFloat) -> Self {
        return UIEdgeInsets(top: 0, left: value, bottom: 0, right: 0)
    }
    
    static func right(_ value: CGFloat) -> Self {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: value)
    }
    
    static func all(_ value: CGFloat) -> Self {
        return UIEdgeInsets(top: value, left: value, bottom: value, right: value)
    }
}
