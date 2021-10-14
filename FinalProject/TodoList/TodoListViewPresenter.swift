//
//  TodoListViewPresenter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

class TodoListViewPresenter: NSObject {
    
    private unowned let view: TodoListViewProtocol
    private let router: TodoListRouterProtocol
    private var interactor: TodoListInteractorProtocol
    
    init(interactor: TodoListInteractorProtocol, view: TodoListViewProtocol, router: TodoListRouterProtocol) {
        self.interactor = interactor
        self.view = view
        self.router = router
    }
}
