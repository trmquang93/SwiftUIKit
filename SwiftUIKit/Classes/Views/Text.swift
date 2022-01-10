//
//  Text.swift
//  SwiftUIKit
//
//  Created by Quang Tran on 31/12/2021.
//

import UIKit


extension UILabel {
    public convenience init(_ text: String) {
        self.init()
        self.text = text
    }
    
    public convenience init(_ attributedText: NSAttributedString) {
        self.init()
        self.attributedText = attributedText
    }
}
