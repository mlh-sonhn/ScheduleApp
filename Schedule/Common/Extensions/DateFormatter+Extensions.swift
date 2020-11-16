//
//  DateFormatter+Extensions.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import Foundation

extension DateFormatter {
    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat = dateFormat
        self.locale = Locale(identifier: "en_US_POSIX")
        self.calendar = .gregorian
    }
    
    convenience init(dateFormat: String, locale: Locale) {
        self.init()
        self.dateFormat = dateFormat
        self.locale = locale
        self.calendar = .gregorian
    }
}
