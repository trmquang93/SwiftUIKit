//
//  SafeArea.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit


@available(iOS 11.0, *)
public class SafeArea: Container {
    public init(edges: UIRectEdge, @BodyBuilder content: BodyBuildBlock) {
        super.init(content: content)
        
        NSLayoutConstraint.activate {
            edges.contains(.top) ? contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor) : contentView.topAnchor.constraint(equalTo: topAnchor)
            edges.contains(.bottom) ? contentView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor) : contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
            edges.contains(.left) ? contentView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor) : contentView.leadingAnchor.constraint(equalTo: leadingAnchor)
            edges.contains(.right) ? contentView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor) : contentView.trailingAnchor.constraint(equalTo: trailingAnchor)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
