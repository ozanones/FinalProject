//
//  TodoItem+CoreDataProperties.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//
//

import Foundation
import CoreData


extension TodoItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoItem> {
        return NSFetchRequest<TodoItem>(entityName: "TodoItem")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var completionTime: String?
    @NSManaged public var detail: String?

}

extension TodoItem : Identifiable {

}
