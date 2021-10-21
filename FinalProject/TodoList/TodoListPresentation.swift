//
//  TodoListPresentation.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

struct TodoListPresentation {
    
    let title: String
    let completion: String
    let detail: String
    
    init(title: String, completion: String, detail: String) {
        self.title = title
        self.completion = completion
        self.detail = detail
    }
    
    init(todos: TodoItem) {
        self.init(title: todos.name ?? "", completion: todos.completionTime ?? "", detail: todos.detail ?? "")
    }
}
