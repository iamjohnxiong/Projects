//
//  AppDelegate.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/5/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit
import CoreData;

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack(modelName: "QuoteAlarms");
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
            guard let navController = window?.rootViewController as? UITabBarController,
                let viewController = navController.viewControllers?.first as? AlarmsViewController,
                let quoteViewController = navController.viewControllers?[1] as? QuotesViewController
                else {
                    return true;
                };
        viewController.coreDataStack = coreDataStack;
        quoteViewController.coreDataStack = coreDataStack;
        return true;
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        coreDataStack.saveContext()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        coreDataStack.saveContext()
    }

}

