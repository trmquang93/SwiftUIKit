//
//  UIStackView+Builder.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

extension UIStackView {
    @discardableResult
    public func arrange(@BodyBuilder content: BodyBuildBlock) -> Self {
        let objects = content()
        var subviews: [UIView] = []
        
        for object in objects {
            if let sv = object as? UIView {
                subviews.append(sv)
            } else if let svs = object as? [UIView] {
                subviews.append(contentsOf: svs.map({$0}))
            }
        }
        
        return self.arrange(subviews)
    }
    
    @discardableResult
    public func arrange(_ content: [UIView]) -> Self {

        for sv in content {
            addArrangedSubview(sv)
            sv.translatesAutoresizingMaskIntoConstraints = false
        }
        
        return activeContraints(inSubviews: content)
    }
    
}
