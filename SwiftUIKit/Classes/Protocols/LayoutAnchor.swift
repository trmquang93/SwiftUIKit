//
//  LayoutAnchor.swift
//  SwiftUIKit
//
//  Created by Quang Tran on 02/01/2022.
//

import Foundation
import UIKit

public protocol ConstraintProtocol {
    var constant: Float { get }
    var from: AnchorType { get }
    var to: AnchorType? { get }
    var multiplier: Float { get set }
    var priority: Float { get set }
    var relation: NSLayoutConstraint.Relation { get }
}

public struct Constraint<T: AnchorType>: ConstraintProtocol {
    public var constant: Float = 0
    public var from: AnchorType { return fromAnchor }
    public var to: AnchorType? { return toAnchor }
    public var fromAnchor: T
    public var toAnchor: T?
    public var multiplier: Float = 1
    public var relation: NSLayoutConstraint.Relation = .equal
    public var priority: Float = 1000
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
    
    func anchor(for view: UIView) -> NSLayoutXAxisAnchor {
        switch self {
        case .leading:
            return view.leadingAnchor
        case .trailing:
            return view.trailingAnchor
        case .left:
            return view.leftAnchor
        case .right:
            return view.rightAnchor
        case .centerX:
            return view.centerXAnchor
        }
    }
}

public enum YAxisAnchor: AnchorType {
    case top
    case bottom
    case centerY
    
    func anchor(for view: UIView) -> NSLayoutYAxisAnchor {
        switch self {
        case .top:
            return view.topAnchor
        case .bottom:
            return view.bottomAnchor
        case .centerY:
            return view.centerYAnchor
        }
    }
}

public enum DimensionAnchor: AnchorType {
    case width
    case height
    
    func anchor(for view: UIView) -> NSLayoutDimension {
        switch self {
        case .width:
            return view.widthAnchor
        case .height:
            return view.heightAnchor
        }
    }
}
