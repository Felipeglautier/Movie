//
//  AppDelegate.swift
//  Filmes
//
//  Created by Lipe glautier on 25/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
       
       func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
           
           let window = UIWindow(frame: UIScreen.main.bounds)
           
           let controller = LoginViewController()
           window.rootViewController = controller
           
           self.window = window
           window.makeKeyAndVisible()
           
           return true
       }
   }
