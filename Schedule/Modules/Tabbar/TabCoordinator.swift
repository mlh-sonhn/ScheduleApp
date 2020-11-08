//
//  TabCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/7/20.
//

import Foundation
import UIKit

class TabCoordinator: Coordinator {
    
    private var window: UIWindow?

    init(window: UIWindow?) {
        self.window = window
    }
    
    override func start() {
        
        let overViewCoordinator = OverviewCoordinator()
        let taskCoordinator = TaskCoordinator()
        let scheduleCoordinator = ScheduleCoordinator()
        
        start(overViewCoordinator)
        start(taskCoordinator)
        start(scheduleCoordinator)
        
        overViewCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Overview", image: nil, tag: 0)
        taskCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Task", image: nil, tag: 1)
        scheduleCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Schedule", image: nil, tag: 2)
        
        let tabbarController = TabBarController(viewControllers: [overViewCoordinator.navigationController, taskCoordinator.navigationController,
                                                                  scheduleCoordinator.navigationController])        
        window?.rootViewController = tabbarController
        window?.makeKeyAndVisible()
        
    }
    
}
