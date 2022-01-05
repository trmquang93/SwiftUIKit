//
//  Layout+Operators.swift
//  StackLayout
//
//  Created by QuangTran on 24/11/2021.
//

import UIKit


infix operator <~

@discardableResult
public func <~ <T:UIView>(_ left: inout T, _ right: T) -> T {
    left = right
    return right
}

@discardableResult
public func <~ <T:UIView>(_ left: inout T?, _ right: T) -> T {
    left = right
    return right
}

@discardableResult
public func <~ <T: UIView> (_ left: inout T, _ right: View<T>) -> View<T> {
    left <~ right.object
    
    return right
}

@discardableResult
public func <~ <T: UIView> (_ left: inout T?, _ right: View<T>) -> View<T> {
    left <~ right.object
    
    return right
}
