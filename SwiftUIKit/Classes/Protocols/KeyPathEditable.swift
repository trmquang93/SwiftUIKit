//
//  KeyPathEditable.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

protocol KeyPathEditable {}
extension NSObject: KeyPathEditable { }

extension KeyPathEditable {
    
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
