//
//  AppDelegate.swift
//  CodeViewBasics
//
//  Created by Bruno Lopes on 22/07/19.
//  Copyright © 2019 Bruno Lopes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let controller = ViewController()
        window.rootViewController = controller
        
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }

    

}

