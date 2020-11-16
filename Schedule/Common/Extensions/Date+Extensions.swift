//
//  Date+Extensions.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import Foundation

extension Calendar {
    static var gregorian = Calendar(identifier: .gregorian)
}

extension Date {
    
    var year: Int {
        return Calendar.gregorian.component(.year, from: self)
    }
    
    var month: Int {
        return Calendar.gregorian.component(.month, from: self)
    }
    
    var day: Int {
        return Calendar.gregorian.component(.day, from: self)
    }
    
    var hour: Int {
        return Calendar.gregorian.component(.hour, from: self)
    }
    
    var minute: Int {
        return Calendar.gregorian.component(.minute, from: self)
    }
    
    var second: Int {
        return Calendar.gregorian.component(.second, from: self)
    }
    
    var previousSecond: Date {
        return Calendar.gregorian.date(byAdding: .second, value: -1, to: self) ?? self
    }
    
    var weekDay: Int {
        /*
         1: Sun
         2: Mon
         3: Tue
         4: Wed
         5: Thu
         6: Fri
         7: Sat
         */
        return Calendar(identifier: .gregorian).component(.weekday, from: self)
    }
    
    var yesterday: Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: -1, to: self)!
    }
    
    var tomorrow: Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: 1, to: self)!
    }
    
    var nextMonthDate: Date {
        return Calendar(identifier: .gregorian).date(byAdding: .month, value: 1, to: self)!
    }
    
    var previousMonthDate: Date {
        return Calendar(identifier: .gregorian).date(byAdding: .month, value: -1, to: self)!
    }

    var startOfDay: Date {
        return Calendar.gregorian.startOfDay(for: self)
    }
    
    var endOfDay: Date {
        return startOfDay.tomorrow.previousSecond
    }
    
    var nextMonth: Date {
        return Calendar.gregorian.date(byAdding: .month, value: 1, to: self) ?? self
    }

    var startOfMonth: Date {
        let components = Calendar(identifier: .gregorian).dateComponents([.month, .year], from: self)
        return Calendar.gregorian.date(from: components) ?? self
    }
    
    var endOfMonth: Date {
        return startOfMonth.nextMonth.previousSecond
    }
    
    var nextWeek: Date {
        return Calendar.gregorian.date(byAdding: .day, value: 7, to: self) ?? self
    }
    
    var nextYear: Date {
        return Calendar.gregorian.date(byAdding: .year, value: 1, to: self) ?? self
    }
    
    var isEndOfMonth: Bool {
        return endOfDay.timeIntervalSince1970 == endOfMonth.timeIntervalSince1970
    }
    
    func isEqual(to date: Date, toGranularity component: Calendar.Component, in calendar: Calendar = Calendar.gregorian) -> Bool {
        return calendar.isDate(self, equalTo: date, toGranularity: component)
    }
    
    func isSameDay(as date: Date) -> Bool {
        return Calendar.gregorian.isDate(self, inSameDayAs: date)
    }
    
    func isInSameMonth(as date: Date) -> Bool {
        return isEqual(to: date, toGranularity: .month)
    }
    
}

extension Date {
    func subtract(days: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .day, value: -days, to: self) ?? self
    }
    
    func subtract(weeks: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .weekOfYear, value: -weeks, to: self) ?? self
    }
    
    func subtract(months: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .month, value: -months, to: self) ?? self
    }
    
    func add(days: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func add(hours: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .hour, value: hours, to: self) ?? self
    }
    
    func add(weeks: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .weekOfYear, value: weeks, to: self) ?? self
    }
    
    func add(months: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .month, value: months, to: self) ?? self
    }
    
    func add(years: Int) -> Date {
        return Calendar.gregorian.date(byAdding: .year, value: years, to: self) ?? self
    }
    
    var sundayOfWeek: Date {
        return subtract(days: weekDay - Calendar.gregorian.firstWeekday)
    }
}
