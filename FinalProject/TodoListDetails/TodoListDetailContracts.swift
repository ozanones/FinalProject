//
//  TodoListDetailContracts.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import Foundation

protocol TodoDetailViewModelDelegate: NSObject {
    func showTodoDetail(_ todo: TodoListDetailPresentation)
}

protocol TodoDetailViewModelProtocol {
    var delegate: TodoDetailViewModelDelegate? { get set }
    func viewDidLoad()
    func saveTodo(todoDetailPresentation : TodoListDetailPresentation)
}
