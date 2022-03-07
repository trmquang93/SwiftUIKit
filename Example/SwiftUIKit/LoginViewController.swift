//
//  LoginViewController.swift
//  SwiftUIKit_Example
//
//  Created by Quang Tran on 31/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import DeclarativeUI
import SwiftUI

class LoginViewController: LoginBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.body {
            
            SafeArea(edges: [.bottom, .right, .left]) {
                Stack(axis: .vertical) {
                    Padding(padding: .left(10)) {
                        Stack(axis: .vertical) {
                            UILabel("Login").with
                                .textColor(.tintColor)
                                .font(.systemFont(ofSize: 36, weight: .bold))
                            
                            UILabel("Email").with
                                .textColor(.tintColor)
                                .font(.systemFont(ofSize: 14))
                            
                            UITextField().with
                                .borderStyle(.roundedRect)
                                .borderColor(UIColor.tintColor.cgColor)
                                .cornerRadius(10)
                                .borderWidth(1)
                                .backgroundColor(.white)
                                .width(to: .width)
                            
                            UILabel("Password").with
                                .textColor(.tintColor)
                                .font(.systemFont(ofSize: 14))
                            
                            UITextField().with
                                .borderStyle(.roundedRect)
                                .borderColor(UIColor.tintColor.cgColor)
                                .cornerRadius(10)
                                .borderWidth(1)
                                .backgroundColor(.white)
                                .width(to: .width)
                        }.with
                            .spacing(10)
                    }.with
                        .width(to: .width, -30)
                    
                    Stack(axis: .horizontal) {
                        UIButton(type: .system).with
                            .image(UIImage(named: "apple logo")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            .width(to: .height)
                        
                        UIButton(type: .system).with
                            .image(UIImage(named: "fb logo")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            .width(to: .height)
                        
                        UIButton(type: .system).with
                            .image(UIImage(named: "google logo")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            .width(to: .height)
                        
                    }.with
                        .leading(0)
                        .height(60)
                    
                    Spacer(height: 100)
                    
                    UIView {
                        UIButton.actionButton
                            .trailing(0)
                            .bottom(0)
                            .title("Login", for: .normal)
                            .onTap(self, action: #selector(buttonAction))
                        
                        Stack(axis: .horizontal) {
                            
                            UILabel("New here?").with
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
                    .alignment(.leading)
                
            }.with
                .bottom(10)
                .leading(0)
                .trailing(0)
        }
    }
    
    
    
    @objc func buttonAction() {
    }
}
