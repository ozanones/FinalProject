//
//  TodoListRouter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListRouter: NSObject, TodoListRouterProtocol {
    
    
    private unowned let view: UIViewController
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: TodoListRoute) {
        //TODO
    }
    
    func presentPopUpView() {
        let alert = UIAlertController(title: "Add Task", message: "Enter Your Task Here", preferredStyle: .alert)
        alert.addTextField()
        
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            let textfield = alert.textFields?[0]
            
            
        }
        
        alert.addAction(submitButton)
        view.present(alert, animated: true, completion: nil)
    }
}
