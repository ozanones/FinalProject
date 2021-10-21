//
//  TodoListRouter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListRouter: NSObject, TodoListRouterProtocol {
    
    let interactor: TodoListInteractorProtocol
    private unowned let view: UIViewController
    init(view: UIViewController, interactor: TodoListInteractorProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
    func navigate(to route: TodoListRoute) {
        //TODO
    }
    
//    func getTodoAndSaveToCoreData() {
//        let alert = UIAlertController(title: "Add Task", message: "You need to fill the all sections in order to add task", preferredStyle: .alert)
//        alert.addTextField { (taskName) in
//            taskName.placeholder = "Add Task Here..."
//        }
//        alert.addTextField { (completionTime) in
//            completionTime.placeholder = "Enter Your Completion Time..."
//        }
//        alert.addTextField { (detail) in
//            detail.placeholder = "Details About Your Task..."
//        }
//
//        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
//            let nameTaskField = alert.textFields?[0]
//            let detailTaskField = alert.textFields?[1]
//            let completionTimeField = alert.textFields?[2]
//
//            let newTask = TodoItem(context: CoreDataFunctionalService.context)
//            newTask.name = nameTaskField?.text
//            newTask.detail = detailTaskField?.text
//            newTask.completionTime = completionTimeField?.text
//            do{
//                try CoreDataFunctionalService.context.save()
//            }
//            catch{
//                print("Error occured while saving to Core Data")
//            }
//
//            self.interactor.fetchFromCoreData()
//
//        }
//
//        alert.addAction(submitButton)
//        view.present(alert, animated: true, completion: nil)
//    }
}
