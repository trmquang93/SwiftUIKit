//
//  Spacer.swift
//  VideoSaverNew
//
//  Created by Quang Tran on 12/9/21.
//

import UIKit

public class Spacer: UIView {
    public init(width: CGFloat) {
        super.init(frame: .zero)
        NSLayoutConstraint.activate {
            widthAnchor.constraint(equalToConstant: width)
        }
    }
    
    public init(height: CGFloat) {
        super.init(frame: .zero)
        NSLayoutConstraint.activate {
            heightAnchor.constraint(equalToConstant: height)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
