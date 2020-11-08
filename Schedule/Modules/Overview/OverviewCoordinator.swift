//
//  OverviewCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation
import UIKit

class OverviewCoordinator: Coordinator {

    override func start() {
        let overViewController = OverViewViewController.instantiateFromStoryboard()
        navigationController.viewControllers = [overViewController]
    }

}
