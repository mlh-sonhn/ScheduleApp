//
//  EventDetailViewModel.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation
import Combine

struct EventDetailEnviroment: Environment {
}

typealias ScheduleDate = (Date, Bool)

class EventDetailViewModel: ViewModelType {
    
    struct Input {
        let loadEvent: AnyPublisher<ScheduleEvent, Never>
        let updateScheduleDate: AnyPublisher<ScheduleDate, Never>
    }
    
    enum Action {
        case loadEvent(ScheduleEvent)
        case updateScheduleDate(ScheduleDate)
    }
    
    struct State {
        var event: ScheduleEvent? = nil
    }

    struct Output {
        let event: AnyPublisher<ScheduleEvent?, Never>
    }
    
    func transform(environment: Environment) -> (Input) -> Output {
        return { input in
            let store = Store<Action, State, Environment>(initial: State(), environment: environment) { (state, action, environment) -> AnyPublisher<Action, Never> in
                switch action {
                case .loadEvent(let event):
                    state.event = event
                case .updateScheduleDate((let date, let isStartDate)):
                    if isStartDate {
                        state.event?.startDate = date
                    } else {
                        state.event?.endDate = date
                    }
                }
                return Empty(completeImmediately: false).eraseToAnyPublisher()
            }
            
            let action = Publishers.Merge(input.loadEvent.map { Action.loadEvent($0) },
                                          input.updateScheduleDate.map { Action.updateScheduleDate($0) })
            
            action.subscribe(store)
            
            return Output(event: store.state.map { $0.event }.eraseToAnyPublisher())
        }
    }
    
}
