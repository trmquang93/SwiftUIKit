//
//  LayoutAnchor.swift
//  SwiftUIKit
//
//  Created by Quang Tran on 02/01/2022.
//

import Foundation

public struct Constraint<T: AnchorType> {
    var constant: Float = 0
    var from: T
    var to: T
    var relation: NSLayoutConstraint.Relation = .equal
}

public struct Anchor<T: AnchorType> {
    var view: UIView
    var anchor: T
    init(view: UIView, anchor: T) {
        self.view = view
        self.anchor = anchor
    }
}

public protocol AnchorType {
}

public enum XAxisAnchor: AnchorType {
    case leading
    case trailing
    case left
    case right
    case centerX
}

public enum YAxisAnchor: AnchorType {
    case top
    case bottom
    case centerY
}

public enum DimensionAnchor: AnchorType {
    case width
    case height
}
