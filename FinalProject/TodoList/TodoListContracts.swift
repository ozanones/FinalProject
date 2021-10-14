//
//  TodoListContracts.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

//MARK: View
protocol TodoListViewProtocol: NSObject {
    func handleOutput(_ output: TodoListPresenterOutput)
}

enum TodoListPresenterOutput {
    case showTodoListItems([TodoListPresentation])
}

//MARK: Interactor

protocol TodoListInteractorDelegate: NSObject {
    func handleOutput(_output: TodoListInteractorOutput)
}

protocol TodoListInteractorProtocol: NSObject {
    var delegate: TodoListInteractorDelegate? { get set }
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

enum TodoListInteractorOutput {
    case showTodoListDetail(TodoListItem)
    case showTodoList([TodoListItem])
}


//MARK: Presenter
protocol TodoListPresenterProtocol: NSObject {
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

//MARK: Router
protocol TodoListRouterProtocol: NSObject {
    func navigate(to route: TodoListRoute)
}

enum TodoListRoute {
    case showTodoListDetail(TodoListItem)
}








