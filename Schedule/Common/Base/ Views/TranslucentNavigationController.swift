//
//  TranslucentNavigationController.swift
//  Schedule
//
//  Created by SonHoang on 11/11/20.
//

import Foundation
import UIKit

class TranslucentNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }

}
