//
//  EventDetailViewController.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import UIKit
import Combine

class EventDetailViewController: UIViewController {
    
    private var cancellables = Set<AnyCancellable>()

    private let loadEvent = ActionSubject<ScheduleEvent, Never>()
    private let updateScheduleDate = ActionSubject<Date, Never>()
    
    var coordinator: EventDetailCoordinator!
    var viewModel: EventDetailViewModel!
    var scheduleEvent: ScheduleEvent = ScheduleEvent()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bindingViewModel()
        
        loadEvent.send(scheduleEvent)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator.parentCoordinator?.finish(coordinator)
    }
    
    private func bindingViewModel() {
        let input = EventDetailViewModel.Input(loadEvent: loadEvent.eraseToAnyPublisher(),
                                               updateScheduleDate: updateScheduleDate.eraseToAnyPublisher())
        
        let output = viewModel.transform(environment: EventDetailEnviroment())(input)
        
        output.event.sink { event in
            print(event?.scheduleDate)
        }.store(in: &cancellables)
    }

}
