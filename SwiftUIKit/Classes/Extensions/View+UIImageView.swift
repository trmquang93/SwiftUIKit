//
//  View+UIImageView.swift
//  SwiftUIKit
//
//  Created by QuangTran on 30/12/2021.
//

import UIKit

extension UIImageView {
    public convenience init(imageNamed: String) {
        self.init(image: UIImage(named: imageNamed))
    }
}
