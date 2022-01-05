//
//  KeyPathEditable.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public protocol KeyPathEditable {
}

public extension KeyPathEditable {
    var with: With<Self> { return With(self) }
    
    @discardableResult
    func with<V>(_ keyPath: WritableKeyPath<Self, V>, _ value: V) -> Self {
        let new: Self = self.update(keyPath, value: value)
        
        return new
    }
    
    @discardableResult
    func update<T>(_ keyPath: WritableKeyPath<Self, T>, value: T) -> Self {
        var copy = self
        copy[keyPath: keyPath] = value
        
        return copy
    }
}

extension NSObject: KeyPathEditable { }

@dynamicMemberLookup
public struct With<T: KeyPathEditable> {
    var object: T
    
    public init(_ object: T) {
        self.object = object
    }
    
    public subscript<V>(dynamicMember member: WritableKeyPath<T, V>) -> ((V) -> Self) {
        
        @discardableResult
        func update(_ value: V) -> Self {
            self.object.update(member, value: value)
            return self
        }
        
        return { (newValue:V) in
            return update(newValue)
        }
    }
}
