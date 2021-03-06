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

    @NSManaged public var iconName: String?
    @NSManaged public var id: Int64
    @NSManaged public var title: String?

}

extension ScheduleCategory : Identifiable {

}
