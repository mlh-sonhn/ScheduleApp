//
//  Task+CoreDataProperties.swift
//  Schedule
//
//  Created by SonHoang on 11/13/20.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var detail: String?
    @NSManaged public var hasNotification: Bool
    @NSManaged public var title: String?

}

extension Task : Identifiable {

}
