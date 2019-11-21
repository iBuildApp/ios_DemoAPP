//
//  AppDelegate.swift
//  DemoAPP
//
//  Created by Anton Boyarkin on 21/11/2019.
//  Copyright © 2019 iBuildApp. All rights reserved.
//

import UIKit
import IBACore
import IBACoreUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let window: UIWindow! = UIWindow()
    var router: RouterType!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AppManager.manager.clearCache()
        
        self.router = Router(window: window)
        AppManager.manager.initLoader(with: router)
        
        return true
    }
}
