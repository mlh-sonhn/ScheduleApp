//
//  Error.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import Foundation

enum CoreDataError {
    case increaseIdFailed
    
    var error: Error {
        switch self {
        case .increaseIdFailed:
            return NSError(domain: "Can not increase ID", code: 666, userInfo: nil)
        }
    }
}
