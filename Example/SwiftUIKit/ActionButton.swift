//
//  ActionButton.swift
//  SwiftUIKit_Example
//
//  Created by Quang Tran on 31/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUIKit

extension UIButton {
    static var actionButton: View<UIButton> {
        return UIButton(type: .system)
            .with
            .height(60)
            .width(144)
            .borderColor(UIColor.white.cgColor)
            .cornerRadius(7)
            .borderWidth(1)
            .titleColor(.white, for: .normal)
            .font(.systemFont(ofSize: 24), for: .normal)
    }
}
