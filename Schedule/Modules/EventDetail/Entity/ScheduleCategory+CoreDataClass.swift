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
        for defaultategory in defaultCategories {
            do {
                try createNewCategory(with: defaultategory.title, and: defaultategory.iconName, in: stack)
            } catch let error {
                print("count not create category \(defaultategory.title) cause : \(error.localizedDescription)")
            }
        }
    }
    
    class func createNewCategory(with title: String, and iconName: String, in stack: CoreDataStack) throws {
        guard let id = increaseId(with: stack) else { throw CoreDataError.increaseIdFailed.error }
        let scheduleCategory = ScheduleCategory(context: stack.managedContext)
        scheduleCategory.id = id
        scheduleCategory.title = title
        scheduleCategory.iconName = iconName
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
