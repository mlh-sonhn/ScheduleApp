//
//  TabBarController.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    init(viewControllers: [UINavigationController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = viewControllers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
