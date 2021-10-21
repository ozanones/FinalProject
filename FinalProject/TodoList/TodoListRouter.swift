//
//  TodoListRouter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListRouter: NSObject, TodoListRouterProtocol {
    
    let interactor: TodoListInteractorProtocol
    private unowned let view: UIViewController
    init(view: UIViewController, interactor: TodoListInteractorProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
    func navigate(to route: TodoListRoute) {
        //TODO
    }
}
