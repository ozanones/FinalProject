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
    
    func getTodoAndSaveToCoreData() {
        let alert = UIAlertController(title: "Add Task", message: "Enter Your Task Here", preferredStyle: .alert)
        alert.addTextField()
        
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            let textfield = alert.textFields?[0]
            
            let newTask = TodoItem(context: CoreDataFunctionalService.context)
            newTask.name = textfield?.text
            newTask.detail = "Detail is here"
            newTask.completionTime = "Completion Time"
            do{
                try CoreDataFunctionalService.context.save()
            }
            catch{
                print("Error occured while saving to Core Data")
            }
            
            self.interactor.fetchFromCoreData()
            
        }
        
        alert.addAction(submitButton)
        view.present(alert, animated: true, completion: nil)
    }
}
