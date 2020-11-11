//
//  Task.swift
//  Schedule
//
//  Created by SonHoang on 11/11/20.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var id: Int = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    private func incrementID() -> Int {
        let realm = try? Realm()
        return (realm?.objects(Task.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }

}
