//
//  AppDelegate.swift
//  CustomTableView
//
//  Created by Resource on 07/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
            
            let navigationController = UINavigationController()
            coordinator = MainCoordinator(navigationController: navigationController)
            coordinator?.start()
            
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
            return true
      
    }

    


}

