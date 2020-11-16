//
//  AppDelegate.swift
//  Schedule
//
//  Created by SonHoang on 11/7/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
        
        // Use this for inspecting the Core Data
//        if let directoryLocation = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).last {
//            print("Documents Directory: \(directoryLocation)Application Support")
//        }
        
//        ScheduleCategory.initialDefaultCategories()
//        print("Id \(ScheduleCategory.increaseId(with: CoreDataStack(modelName: "Schedule")))")
        
        return true
    }

}

