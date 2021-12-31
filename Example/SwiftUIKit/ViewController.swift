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
            UIImageView(imageNamed: "ls_yapcasialogomark").with
                .contentMode(.scaleAspectFit)
                .leading(60)
                .bottom(341)
                .width(60)
                .height(70)
        }
    }

}

