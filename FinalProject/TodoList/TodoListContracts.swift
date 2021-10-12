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
    func addButtonTapped()
}

protocol TodoListItemsInteractorProtocol {
    var delegate: TodoListInteractorDelegate? {get set}
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
    func addButtonTapped()
}

protocol TodoListInteractorDelegate {
    func handleOutput(_ output: TodoListInteractorOutput)
}

enum TodoListInteractorOutput {
    case showTodoListDetail(TodoListItem)
    case showTodoList([TodoListItem])
}


protocol TodoListItemsProtocol {
    func showTodoItems(_ output: TodoListPresenterOutput )
}








enum TodoListPresenterOutput {
    case showTodoListItems([TodoListPresentation])
}
