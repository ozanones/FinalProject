//
//  TodoListPresentation.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

struct TodoListPresentation {
    
    let name: String
    let completionTime: String
    let detail: String
    
    init(name: String, completionTime: String, detail: String) {
        self.name = name
        self.completionTime = completionTime
        self.detail = detail
    }
    
    init(todos: TodoItem) {
        self.init(name: todos.name ?? "", completionTime: todos.completionTime ?? "", detail: todos.detail ?? "")
    }
}
