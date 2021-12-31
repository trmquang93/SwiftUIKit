//
//  KeyPathEditable.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public protocol KeyPathEditable {
}

extension NSObject: KeyPathEditable { }

extension View: KeyPathEditable {
    
    @discardableResult
    public func update<Value>(_ keyPath: WritableKeyPath<T, Value>, value: Value) -> Self {
        let view = self.view.update(keyPath, value: value)
        let copy = View(view)
        return copy
    }
    
    
    
    @discardableResult
    public func with<V>(_ keyPath: WritableKeyPath<T, V>, _ value: V) -> Self {
        self.update(keyPath, value: value)
        
        return self
    }
}

public extension KeyPathEditable where Self: NSObject {
    
    @discardableResult
    func update<T>(_ keyPath: WritableKeyPath<Self, T>, value: T) -> Self {
        var copy = self
        copy[keyPath: keyPath] = value
        
        return copy
    }
    
    
    
    @discardableResult
    func with<V>(_ keyPath: WritableKeyPath<Self, V>, _ value: V) -> Self {
        self.update(keyPath, value: value)
        
        return self
    }
}
