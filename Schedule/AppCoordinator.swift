//
//  AppCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/7/20.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {

    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    override func start() {
        let tabBarCoordinator = TabCoordinator(window: window)
        start(tabBarCoordinator)
    }
    
}
