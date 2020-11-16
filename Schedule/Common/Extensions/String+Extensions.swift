//
//  String+Extensions.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//

import UIKit

extension String {
    var localized: String {
        var bundle: Bundle? = Bundle.main
        let resourceName = "ja"
        if let path = Bundle.main.path(forResource: resourceName, ofType: "lproj") {
            bundle = Bundle(path: path)
        }
        return bundle?.localizedString(forKey: self, value: nil, table: nil) ?? self
    }
    
    func date(withFormatter formatter: String) -> Date {
        let dateFormatter = DateFormatter(dateFormat: formatter)
        return dateFormatter.date(from: self) ?? Date()
    }

}

