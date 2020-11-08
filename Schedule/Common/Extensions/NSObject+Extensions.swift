//
//  NSObject+Extensions.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation

extension NSObject {
    @nonobjc class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    var className: String {
        return type(of: self).className
    }
}
