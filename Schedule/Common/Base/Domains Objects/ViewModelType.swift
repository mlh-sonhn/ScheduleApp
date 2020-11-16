//
//  ViewModelType.swift
//  Schedule
//
//  Created by SonHoang on 11/7/20.
//

import Foundation

protocol Environment {
}

protocol ViewModelType {

    associatedtype Input
    associatedtype Action
    associatedtype State
    associatedtype Output

    func transform(environment: Environment) -> (_ input: Input) -> Output
}
