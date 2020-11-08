//
//  ScheduleCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation
import UIKit

class ScheduleCoordinator: Coordinator {

    override func start() {
        let scheduleViewController = ScheduleViewController.instantiateFromStoryboard()
        scheduleViewController.coordinator = self
        navigationController.viewControllers = [scheduleViewController]
    }
    
    func startEventDetail(with event: ScheduleEvent) {
        let eventDetailCoordinator = EventDetailCoordinator(navigationController: navigationController,
                                                            scheduleEvent: event)
        start(eventDetailCoordinator)
    }

}
