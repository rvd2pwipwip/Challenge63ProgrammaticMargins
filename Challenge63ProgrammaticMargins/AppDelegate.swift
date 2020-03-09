//
//  AppDelegate.swift
//  Challenge63ProgrammaticMargins
//
//  Created by Herve Desrosiers on 2020-03-09.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .yellow
        navigationController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }


}

