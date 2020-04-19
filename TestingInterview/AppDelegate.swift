//
//  AppDelegate.swift
//  TestingInterview
//
//  Created by Daymein Gregorio on 4/19/20.
//  Copyright © 2020 Daymein Gregorio. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navCon = UINavigationController(rootViewController: MainViewController())
        window = UIWindow()
        window?.rootViewController = navCon
        window?.makeKeyAndVisible()
        
        return true
    }

}

