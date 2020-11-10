//
//  ScheduleViewController.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    var coordinator: ScheduleCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc private func gotoDetail() {
        let scheduleEvent = ScheduleEvent()
        coordinator.startEventDetail(with: scheduleEvent)
    }

}
