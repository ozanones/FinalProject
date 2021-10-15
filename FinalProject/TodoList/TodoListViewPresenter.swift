//
//  TodoListViewPresenter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

class TodoListViewPresenter: NSObject, TodoListPresenterProtocol {
    
    private unowned let view: TodoListViewProtocol
    private let router: TodoListRouterProtocol
    private var interactor: TodoListInteractorProtocol
    
    init(interactor: TodoListInteractorProtocol, view: TodoListViewProtocol, router: TodoListRouterProtocol) {
        self.interactor = interactor
        self.view = view
        self.router = router
    }
    
    func viewDidLoad() {
        interactor.viewDidLoad()
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        interactor.didSelectRow(at: indexPath)
    }
    
    func addButtonTapped() {
        router.getTodoAndSaveToCoreData()
    }
}

extension TodoListViewPresenter: TodoListInteractorDelegate {
    func handleOutput(_output: TodoListInteractorOutput) {
        switch _output {
        case .showTodoList(let todos):
            view.handleOutput(.showTodoListItems(todos.map(TodoListPresentation.init)))
        case .showTodoListDetail(let todos):
            router.navigate(to: .showTodoListDetail(todos))
        }
    }
}
