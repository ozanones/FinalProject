//
//  TodoListViewBuilder.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListBuilder {
    static func build() -> TodoListViewController {
        let storyboard = UIStoryboard(name: "TodoListView", bundle: nil)
        let view = storyboard.instantiateViewController(identifier: "TodoListViewController") as! TodoListViewController
        let interactor = TodoListInteractor(service: appContainer.service)
        let router = TodoListRouter(view: view)
        let presenter = TodoListViewPresenter(interactor: interactor, view: view, router: router)
        view.presenter = presenter
        interactor.delegate = presenter
        return view
    }
}

