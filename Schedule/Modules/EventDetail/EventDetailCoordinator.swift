//
//  EventDetailCoordinator.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation
import UIKit

class EventDetailCoordinator: Coordinator {
    
    var scheduleEvent: ScheduleEvent = ScheduleEvent()
    
    init(navigationController: TranslucentNavigationController, scheduleEvent: ScheduleEvent) {
        super.init()
        self.scheduleEvent = scheduleEvent
        self.navigationController = navigationController
    }

    override func start() {
        let eventDetailViewController = EventDetailViewController.instantiateFromStoryboard()
        eventDetailViewController.coordinator = self
        eventDetailViewController.viewModel = EventDetailViewModel()
        eventDetailViewController.scheduleEvent = scheduleEvent
        navigationController.pushViewController(eventDetailViewController, animated: true)
    }

}
