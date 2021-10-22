//
//  TodoListDetailBuilder.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import UIKit

class TodoListDetailBuilder {
    
    static func build(_ todo: TodoItem) -> TodoListDetailViewController {
        let storyboard = UIStoryboard(name: "TodoListDetailView", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "TodoListDetailViewController") as! TodoListDetailViewController
        //viewController.viewModel = TodoListDetailViewModel(_todos: TodoItem)
        return viewController
    }
}
