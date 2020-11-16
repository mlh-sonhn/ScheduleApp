//
//  ScheduleEvent+CoreDataProperties.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//
//

import Foundation
import CoreData


extension ScheduleEvent {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ScheduleEvent> {
        return NSFetchRequest<ScheduleEvent>(entityName: "ScheduleEvent")
    }

    @NSManaged public var createDate: Date?
    @NSManaged public var detail: String?
    @NSManaged public var endDate: Date?
    @NSManaged public var hasNotification: Bool
    @NSManaged public var locationLat: Double
    @NSManaged public var locationLong: Double
    @NSManaged public var startDate: Date?
    @NSManaged public var title: String?
    @NSManaged public var updatedDate: Date?
    @NSManaged public var categoryId: Int64

}

extension ScheduleEvent : Identifiable {

}
