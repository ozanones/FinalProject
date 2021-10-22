//
//  TodoListDetailViewModel.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import Foundation

class TodoListDetailViewModel {
    
    private var todos: TodoItem?

        init() {
            
        }
    init(todos: TodoItem) {
            self.todos = todos
        }
}


