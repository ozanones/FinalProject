//
//  TodoListContracts.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

protocol TodoListPresenterProtocol {
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

protocol TodoListItemsProtocol {
    func showTodoItems(_ output: TodoListPresenterOutput )
}








enum TodoListPresenterOutput {
    case showTodoListItems([TodoListPresentation])
}
