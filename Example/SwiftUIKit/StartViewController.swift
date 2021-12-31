//
//  StartViewController.swift
//  SwiftUIKit
//
//  Created by QuangTran on 12/30/2021.
//  Copyright (c) 2021 QuangTran. All rights reserved.
//

import UIKit
import SwiftUIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        view
            .update(\.backgroundColor, value: .white)
        
        view.body {
            
            UIImageView(imageNamed: "background")
            
            SafeArea(edges: [.bottom, .right]) {
                
                UIButton.actionButton
                    .title("Get started", for: .normal)
                    .onTap(self, action: #selector(buttonAction))
                
            }
            
            Stack(axis: .vertical) {
                
                UIImageView(imageNamed: "ls_yapcasialogomark").with
                    .contentMode(.scaleAspectFit)
                    .width(60)
                    .height(70)
                
                Text("Lorem").with
                    .font(.systemFont(ofSize: 36))
                    .textColor(.tintColor)
                
                Text("consequat duis").with
                    .textColor(.tintColor)
                
                Text("enim velit").with
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

