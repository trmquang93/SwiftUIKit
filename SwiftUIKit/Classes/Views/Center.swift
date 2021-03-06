//
//  Center.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public class Container: UIView {
    weak var contentView: UIView!
    
    public init(@BodyBuilder content: BodyBuildBlock) {
        super.init(frame: .zero)
        
        let view = UIView(content: content)
        
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = false
        
        contentView = view
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for content in contentView.subviews {
            let pointInContent = content.convert(point, from: self)
            if content.point(inside: pointInContent, with: event) {
                return true
            }
        }
        return false
    }
    
    @discardableResult
    public override func body(@BodyBuilder content: BodyBuildBlock) -> Self {
        contentView.body(content: content)
        return self
    }
    
    @discardableResult
    public override func body(axis: NSLayoutConstraint.Axis, spacing: CGFloat = 0, @BodyBuilder content: BodyBuildBlock) -> Self {
        contentView.body(axis: axis, spacing: spacing, content: content)
        return self
    }
}

public class Center: Container {
    
    public override init(@BodyBuilder content: BodyBuildBlock) {
        super.init(content: content)
        NSLayoutConstraint.activate {
            contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class CenterVertically: Container {
    
    public override init(@BodyBuilder content: BodyBuildBlock) {
        super.init(content: content)
        NSLayoutConstraint.activate {
            contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class CenterHorizontally: Container {
    public override init(@BodyBuilder content: BodyBuildBlock) {
        super.init(content: content)
        
        NSLayoutConstraint.activate {
            contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            contentView.topAnchor.constraint(equalTo: self.topAnchor)
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
