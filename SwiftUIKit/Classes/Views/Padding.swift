//
//  Padding.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public class Padding: Container {
    init(padding: UIEdgeInsets, @BodyBuilder content: BodyBuildBlock) {
        super.init(content: content)
        
        NSLayoutConstraint.activate {
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding.left)
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding.right)
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: padding.top)
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding.bottom)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
