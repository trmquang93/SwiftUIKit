//
//  View+Methods.swift
//  SwiftUIKit
//
//  Created by Quang Tran on 11/01/2022.
//

import UIKit

public extension With where T: UIView {
    func contentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        
        view.setContentHuggingPriority(priority, for: axis)
        
        return self
    }
    
    func contentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        
        view.setContentCompressionResistancePriority(priority, for: axis)
        
        return self
    }
}
