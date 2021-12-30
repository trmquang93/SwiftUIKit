//
//  UIView+Builder.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public extension UIView {
    convenience init(axis: NSLayoutConstraint.Axis, @BodyBuilder content: BodyBuildBlock) {
        self.init()
        
        if let stackView = self as? UIStackView {
            stackView.arrange(content: content)
                .with {
                    $0.alignment = .fill
                    $0.axis = axis
                }
        } else {
            
            body(axis: axis, content: content)
        }
        
    }
    
    
    @objc convenience init(@BodyBuilder content: BodyBuildBlock) {
        self.init()
        if let stackView = self as? UIStackView {
            stackView.arrange(content: content)
        } else {
            body(content: content)
        }
    }
}


extension ViewObject where Self: UIView {
    @discardableResult
    public func body(@BodyBuilder content: BodyBuildBlock) -> Self {
        let objects = content()
        var subviews: [UIView] = []
        
        for object in objects {
            if let sv = object as? ViewObject {
                subviews.append(sv.object)
            } else if let svs = object as? [ViewObject] {
                subviews.append(contentsOf: svs.map({$0.object}))
            }
        }
        
        for sv in subviews {
            addSubview(sv)
            sv.object.translatesAutoresizingMaskIntoConstraints = false
        }
        
        for sv in subviews {
            guard let superView = sv.superview else { continue }
            
            if sv.layoutConstraints.isEmpty {
                NSLayoutConstraint.activate {
                    sv.topAnchor.constraint(equalTo: superView.topAnchor)
                    sv.bottomAnchor.constraint(equalTo: superView.bottomAnchor)
                    sv.leadingAnchor.constraint(equalTo: superView.leadingAnchor)
                    sv.trailingAnchor.constraint(equalTo: superView.trailingAnchor)
                }
            } else {
                NSLayoutConstraint.activate(sv.layoutConstraints)
            }
        }
        
        return self
    }
    
    @discardableResult
    public func body(axis: NSLayoutConstraint.Axis, spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        
        body {
            UIStackView(axis: axis, content: content)
                .with.spacing(spacing)
        }
        
        return self
    }
    
    @discardableResult
    public func vertical(spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        
        self.body(axis: .vertical, spacing: spacing, content: content)
    }
    
    @discardableResult
    public func horizontal(spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        
        self.body(axis: .horizontal, spacing: spacing, content: content)
    }
}