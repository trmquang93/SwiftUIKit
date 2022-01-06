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
                
                UIView {
                    UIButton.actionButton
                        .trailing(0)
                        .bottom(0)
                        .title("Login", for: .normal)
                        .onTap(self, action: #selector(buttonAction))
                    
                    Stack(axis: .horizontal) {
                        
                        Text("New here?").with
                            .textColor(.white)
                            .font(.systemFont(ofSize: 16))
                        
                        Spacer(width: 10)
                        
                        UIButton(type: .system).with
                            .tintColor(.white)
                            .title("Register", for: .normal)
                            .font(.systemFont(ofSize: 16, weight: .bold), for: .normal)
                        
                    }.with
                        .height(22)
                        .bottom(0)
                        .leading(0)
                    
                }.with
                    .bottom(20)
                    .leading(25)
                    .trailing(30)
                
                
            }.with
                .bottom(10)
                .leading(0)
                .trailing(0)
        }
    }
    
    
    
    @objc func buttonAction() {
    }
}
