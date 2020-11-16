//
//  ScheduleViewController.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import UIKit

class ScheduleViewController: TabBarChildViewController {
    
    var coordinator: ScheduleCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup(leftTitle: "All Track Event", rightTitle: "")
    }
    
    @objc private func gotoDetail() {
        let scheduleEvent = ScheduleEvent()
        coordinator.startEventDetail(with: scheduleEvent)
    }

}
