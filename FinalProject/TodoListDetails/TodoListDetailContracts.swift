//
//  TodoListDetailContracts.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import Foundation

protocol TodoListDetailViewModelDelegate: NSObject {
    func showTodoDetail(_ todo: TodoItem)
}

protocol TodoListDetailViewModelProtocol {
    var delegate: TodoListDetailViewModelDelegate? { get set }
    func viewDidLoad()
    func getTodo(todoDetailPresentation : TodoListDetailPresentation)
}
