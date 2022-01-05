//
//  LoginViewController.swift
//  SwiftUIKit_Example
//
//  Created by Quang Tran on 31/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUIKit

class LoginViewController: LoginBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.body {
            
            SafeArea(edges: [.bottom, .right, .left]) {
                
                Text("New here?").with
                    .bottom(0)
                    .leading(20)
                    .textColor(.white)
                    .font(.systemFont(ofSize: 16))
                
            }.with
                .bottom(10)
                .leading(0)
                .trailing(0)
        }
    }
    
    
    
    @objc func buttonAction() {
    }
}
