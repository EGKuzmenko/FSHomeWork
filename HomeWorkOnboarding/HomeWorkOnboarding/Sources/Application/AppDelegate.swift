//
//  AppDelegate.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 16/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let initialVC: UIViewController = {
//            if UserDefaults.standard.bool(forKey: "enter") {
//                return UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "HomeView")
//            } else {
//                return UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
//            }
//        }()
//        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = initialVC
//        self.window?.makeKeyAndVisible()
        
        return true
    }
}

