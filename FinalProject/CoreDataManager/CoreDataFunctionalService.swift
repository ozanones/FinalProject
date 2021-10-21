//
//  CoreDataFunctionalService.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 14.10.2021.
//

import UIKit
import CoreData

class CoreDataFunctionalService {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetchFromCoreData() -> [TodoItem]{
        
        var todos: [TodoItem] = []
        
        let fetchRequest: NSFetchRequest<TodoItem> = TodoItem.fetchRequest()
        do {
            todos = try context.fetch(fetchRequest)
            print(todos)
        } catch {
           print("Error occured during fetching data from Core Data")
        }
        return todos
    }
    
    func save(_todo: TodoListPresentation){
        do {
            let newTask = TodoItem(context: context)
            newTask.name = _todo.title
            newTask.completionTime = _todo.completion
            newTask.detail = _todo.detail
            try context.save()
        } catch  {
            print("Error occured during saving to Core Data")
        }
        
    }
}


