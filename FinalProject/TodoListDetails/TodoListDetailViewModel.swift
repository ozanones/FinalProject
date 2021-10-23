//
//  TodoListDetailViewModel.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import Foundation

class TodoListDetailViewModel: TodoListDetailViewModelProtocol {

    var delegate: TodoListDetailViewModelDelegate?
    var todos: TodoItem?
    var service: NotificationManager?
    
    init(service: NotificationManager, todos: TodoItem) {
        self.service = service
        self.todos = todos
    }
    
    func viewDidLoad() {
        guard let todos = todos else { return }
        self.delegate?.showTodoDetail(todos)
    }
    
    func createNotification(_ todo: TodoItem) {
        service?.createNotification(todo)
    }
}


