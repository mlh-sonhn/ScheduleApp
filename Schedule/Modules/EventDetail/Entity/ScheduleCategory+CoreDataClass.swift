//
//  ScheduleCategory+CoreDataClass.swift
//  Schedule
//
//  Created by SonHoang on 11/16/20.
//
//

import Foundation
import CoreData

@objc(ScheduleCategory)
public class ScheduleCategory: NSManagedObject {

    class func initialDefaultCategories() {
        let stack = CoreDataStack(modelName: CoreDataModelName.Schedule.rawValue)
        do {
            try createNewCategory(with: "First category", and: 1, in: stack)
        } catch let error {
            print("count not create category \(error.localizedDescription)")
        }
    }
    
    class func createNewCategory(with title: String, and iconType: Int16, in stack: CoreDataStack) throws {
        guard let id = increaseId(with: stack) else { throw CoreDataError.increaseIdFailed.error }
        let scheduleCategory = ScheduleCategory(context: stack.managedContext)
        scheduleCategory.id = id
        scheduleCategory.title = title
        scheduleCategory.iconType = iconType
        stack.saveContext()
    }
    
    class func deleteCategory(_ categoryToDelete: ScheduleCategory, in stack: CoreDataStack) {
        stack.managedContext.delete(categoryToDelete)
        stack.saveContext()
    }
    
    private class func increaseId(with stack: CoreDataStack) -> Int64? {
        let fetchRequest: NSFetchRequest<ScheduleCategory> = ScheduleCategory.fetchRequest()
        do {
            let countResult = try stack.managedContext.count(for: fetchRequest)
            return Int64(countResult)
        } catch let error as NSError {
            print("count not fetched \(error), \(error.userInfo)")
        }
        return nil
    }
    
}
