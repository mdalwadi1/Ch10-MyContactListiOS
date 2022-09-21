//
//  AppDelegate.swift
//  Ch10 - Contact List
//
//  Created by user216619 on 4/26/22.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        let settings = UserDefaults.standard
                
        if settings.string(forKey: Constants.kSortField) == nil {
            settings.set("City", forKey: Constants.kSortField)
        }
        if settings.string(forKey: Constants.kSortDirectionAscending) == nil {
            settings.set(true, forKey: Constants.kSortDirectionAscending)
        }
        
        settings.synchronize()
        //NSLog = outputs messages to Apple System Log facility; Logs exceptions & errors
        NSLog("Sort field: %@",  settings.string(forKey: Constants.kSortField)!)
        NSLog("Sort direction: \(settings.bool(forKey: Constants.kSortDirectionAscending))")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
