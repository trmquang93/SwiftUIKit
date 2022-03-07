//
//  StartViewController.swift
//  SwiftUIKit
//
//  Created by QuangTran on 12/30/2021.
//  Copyright (c) 2021 QuangTran. All rights reserved.
//

import UIKit
import DeclarativeUI

class StartViewController: LoginBaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.body {
            
            SafeArea(edges: [.bottom, .right]) {
                UIButton.actionButton
                    .trailing(27)
                    .bottom(31)
                    .title("Get started", for: .normal)
                    .onTap(self, action: #selector(buttonAction))
                
            }
            
            Stack(axis: .vertical) {
                
                UIImageView(imageNamed: "ls_yapcasialogomark").with
                    .contentMode(.scaleAspectFit)
                    .width(60)
                    .height(70)
                
                UILabel("Lorem").with
                    .font(.systemFont(ofSize: 36))
                    .textColor(.tintColor)
                
                UILabel("consequat duis").with
                    .textColor(.tintColor)
                
                UILabel("enim velit").with
                    .textColor(.tintColor)
                
            }.with
                .alignment(.leading)
                .leading(60)
                .bottom(224)
        }
    }
    
    @objc func buttonAction() {
        let viewController = LoginViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

