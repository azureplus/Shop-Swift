//
//  AppDelegate.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/9.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.awake()
        self.registerUI()
        return true
    }
    
}


extension AppDelegate {
    func registerUI() {
        let guide = GuideController()
        self.window?.rootViewController = guide
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
    }
}

extension AppDelegate {
    
    func awake() {
        UIScrollView.awake()
    }
}

