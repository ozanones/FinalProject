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


//MARK: Interactor
protocol TodoListInteractorDelegate: NSObject {
    func handleOutput(_output: TodoListInteractorOutput)
}

protocol TodoListInteractorProtocol: NSObject {
    var delegate: TodoListInteractorDelegate? { get set }
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
    func fetchFromCoreData()
    
}

enum TodoListInteractorOutput {
    case showTodoListDetail(TodoItem)
    case showTodoList([TodoItem])
}


//MARK: Presenter
protocol TodoListPresenterProtocol: NSObject {
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
    func addButtonTapped()
}


enum TodoListPresenterOutput {
    case showTodoListItems([TodoListPresentation])
}


//MARK: Router
protocol TodoListRouterProtocol: NSObject {
    func navigate(to route: TodoListRoute)
    func getTodoAndSaveToCoreData()
}

enum TodoListRoute {
    case showTodoListDetail(TodoItem)
}

