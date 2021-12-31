//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by QuangTran on 12/30/2021.
//  Copyright (c) 2021 QuangTran. All rights reserved.
//

import UIKit
import SwiftUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.body {
            
            UIImageView(imageNamed: "background")
            
            SafeArea(edges: [.bottom, .right]) {
                
                UIButton(type: .system).with
                    .height(60)
                    .width(144)
                    .trailing(27)
                    .bottom(31)
                    .borderColor(UIColor.white.cgColor)
                    .cornerRadius(10)
                    .borderWidth(1)
                    .title("Get started", for: .normal)
                    .titleColor(.white, for: .normal)
                    .font(.systemFont(ofSize: 24), for: .normal)
                
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

}

