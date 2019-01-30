//
//  AppDelegate.swift
//  CoreDataTutorial
//
//  Created by John Xiong on 10/16/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit
import CoreData;

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack(modelName: "Business");

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
        -> Bool {
            guard let navController =
                window?.rootViewController as? UINavigationController,
                let viewController =
                navController.topViewController as? ViewController else {
                    return true
            }
            viewController.managedContext = coreDataStack.managedContext
            return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        coreDataStack.saveContext()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        coreDataStack.saveContext()
    }
}

