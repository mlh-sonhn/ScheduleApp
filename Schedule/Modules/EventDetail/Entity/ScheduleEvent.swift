//
//  ScheduleEvent.swift
//  Schedule
//
//  Created by SonHoang on 11/8/20.
//

import Foundation
import RealmSwift

class ScheduleEvent: Object {

    @objc dynamic var id: Int = 0
    @objc dynamic var createDate: Date?
    @objc dynamic var updatedDate: Date?
    @objc dynamic var type: Int = -1
    @objc dynamic var startDate: Date?
    @objc dynamic var endDate: Date?
    @objc dynamic var detail: String = ""
    @objc dynamic var hasNotification: Bool = false
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(type: Int, startDate: Date, endDate: Date, detail: String, hasNotification: Bool) {
        self.init()
        self.id = incrementID()
        self.createDate = Date()
        self.updatedDate = Date()
        self.type = type
        self.startDate = startDate
        self.endDate = endDate
        self.detail = detail
        self.hasNotification = hasNotification
    }
    
    private func incrementID() -> Int {
        let realm = try? Realm()
        return (realm?.objects(ScheduleEvent.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }

}
