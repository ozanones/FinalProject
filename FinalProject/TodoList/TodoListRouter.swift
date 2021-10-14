//
//  TodoListRouter.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListRouter: NSObject, TodoListRouterProtocol {
    
    private unowned let view: UIViewController
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: TodoListRoute) {
        //TODO
    }
}
