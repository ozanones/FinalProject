//
//  TodoListPresentation.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

struct TodoListPresentation {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    init(todos: TodoListItem) {
        self.init(title: todos.title)
    }
}
