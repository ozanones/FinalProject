//
//  TodoListViewBuilder.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListBuilder {
    static func build() -> TodoListViewController {
        let storyboard = UIStoryboard(name: "TodoList", bundle: nil)
        let view = storyboard.instantiateViewController(identifier: "TodoListViewController") as! TodoListViewController
        let interactor = TodoListInteractor.self
        let router = TodoListRouter(view: view)
//        let presenter = TodoListPresenter
//        view.presenter = presenter
        return view
    }
}

