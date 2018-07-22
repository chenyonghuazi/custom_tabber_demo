//
//  AppDelegate.swift
//  custom_tabber_demo
//
//  Created by Edwin on 2018/6/10.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit
import AZTabBar
import EasyNotificationBadge

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabController:AZTabBarController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let customTabbarC = customTabbar()
//        var icons = [String]()
//        icons.append("speaker")
//        icons.append("speaker")
//        icons.append("speaker")
//        icons.append("speaker")
//        icons.append("speaker")
//        tabController = AZTabBarController(withTabIconNames: icons)
//        tabController.setViewController(ViewController(), atIndex: 2)
//        tabbar.delegate = self
        window?.rootViewController = customTabbarC
        window?.backgroundColor = UIColor.white
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

//    func setupButton(){
//        var button = RoundedButton()
//        button.isEnabled = true
//        button.backgroundColor = .white
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setImage(UIImage(named: "account"), for: [])
//        button.tintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//        button.addTarget(self, action: #selector(didSelectMiddleMenu(sender:)), for: .touchUpInside)
//        tabController.view.addSubview(button)
//        let container = tabController.buttonsContainerView!
//        button.topAnchor.constraint(equalTo: container.topAnchor, constant: -20).isActive = true
//        button.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 1.1).isActive = true
//        button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1.0).isActive = true
//        button.centerXAnchor.constraint(equalTo: tabController.view.centerXAnchor).isActive = true
//        container.layer.shadowOffset = CGSize(width: 0, height: -2)
//        container.layer.shadowRadius = 10
//        container.layer.shadowOpacity = 0.1
//        container.layer.shadowColor = UIColor.black.cgColor
//        tabController.animateTabChange = true
//        tabController.tabBarHeight = 60
//        tabController.selectionIndicatorHeight = 3
//        tabController.selectionIndicatorColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//    }
}

