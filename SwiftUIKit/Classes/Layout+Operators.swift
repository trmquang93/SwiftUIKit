//
//  Layout+Operators.swift
//  StackLayout
//
//  Created by QuangTran on 24/11/2021.
//

import UIKit


infix operator <~ : HeightPrecedence

precedencegroup HeightPrecedence {
    lowerThan: AdditionPrecedence
}

@discardableResult
public func <~ <T: UIView>(left: inout T, right: T) -> T {
    left = right
    return right
}

@discardableResult
public func <~ <T: UIView>(left: inout T?, right: T) -> T {
    left = right
    return right
}

@discardableResult
public func <~ <T: UIView>(left: inout T, right: View<T>) -> View<T> {
    left = right.view
    return right
}

@discardableResult
public func <~ <T: UIView>(left: inout T?, right: View<T>) -> View<T> {
    left = right.view
    return right
}

