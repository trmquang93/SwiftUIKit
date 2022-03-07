//
//  LoginBaseViewController.swift
//  SwiftUIKit_Example
//
//  Created by Quang Tran on 31/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import DeclarativeUI

class LoginBaseViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view
            .update(\.backgroundColor, value: .white)
        
        view.body {
            
            UIImageView(imageNamed: "background")
            
            UIImageView(imageNamed: "bottom_background").with
                .bottom(0)
                .leading(0)
                .trailing(0)
                .top(to: .bottom, -170)
        }
    }
}
