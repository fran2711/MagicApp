//
//  AppDelegate.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = SplashRouter.launchModule()
        window?.makeKeyAndVisible()
        return true
    }
}
