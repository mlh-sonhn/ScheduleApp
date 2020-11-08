//
//  TaskCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation

class TaskCoordinator: Coordinator {

    override func start() {
        let taskViewController = TaskViewController.instantiateFromStoryboard()
        navigationController.viewControllers = [taskViewController]
    }

}
