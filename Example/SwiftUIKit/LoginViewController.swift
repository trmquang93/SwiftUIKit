//
//  LoginViewController.swift
//  SwiftUIKit_Example
//
//  Created by Quang Tran on 31/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view
            .update(\.backgroundColor, value: .white)
        
        
        view.body {
            
            UIImageView(imageNamed: "background")
            
            SafeArea(edges: [.bottom, .right]) {
                
                UIButton.actionButton
//                    .attributedTitle(NSAttributedString(string: "Login", attributes: [.font: UIFont.systemFont(ofSize: <#T##CGFloat#>)]), for: <#T##UIControl.State#>)
                    .title("Login", for: .normal)
                    .onTap(self, action: #selector(buttonAction))
                
            }
        }
    }
    
    
    
    @objc func buttonAction() {
    }
}
