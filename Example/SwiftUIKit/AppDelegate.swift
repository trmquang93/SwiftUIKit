//
//  AppDelegate.swift
//  SwiftUIKit
//
//  Created by QuangTran on 12/30/2021.
//  Copyright (c) 2021 QuangTran. All rights reserved.
//
import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        IQKeyboardManager.shared.enable = true
        
        loadRootViewController()
        
        return true
    }
    
    
}

extension AppDelegate {
    func loadRootViewController() {
        let window = self.window ?? UIWindow()
        
        window.makeKeyAndVisible()
        
        window.rootViewController = AppDelegate.createRootViewController()
        
        self.window = window
    }
    
    static func createRootViewController() -> UIViewController {
        let viewController = UINavigationController(rootViewController: StartViewController())
        
        return viewController
    }
}

