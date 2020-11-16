//
//  ScheduleCategory+CoreDataProperties.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//
//

import Foundation
import CoreData


extension ScheduleCategory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ScheduleCategory> {
        return NSFetchRequest<ScheduleCategory>(entityName: "ScheduleCategory")
    }

    @NSManaged public var iconType: Int16
    @NSManaged public var title: String?
    @NSManaged public var id: Int64

}

extension ScheduleCategory : Identifiable {

}
