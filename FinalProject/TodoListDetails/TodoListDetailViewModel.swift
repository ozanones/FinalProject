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
    
    init() {
        
    }
    init(todos: TodoItem) {
        self.todos = todos
    }
    
    func viewDidLoad() {
        guard let todos = todos else { return }
        self.delegate?.showTodoDetail(todos)
    }
    
    func getTodo(todoDetailPresentation: TodoListDetailPresentation) {
        //
    }
}


