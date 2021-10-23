//
//  TodoListDetailViewController.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 22.10.2021.
//

import UIKit

class TodoListDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var completionLabel: UILabel!
    
    var viewModel: TodoListDetailViewModelProtocol! {
            didSet {
                viewModel.delegate = self
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }
    
}

extension TodoListDetailViewController: TodoListDetailViewModelDelegate {
    
    func showTodoDetail(_ todo: TodoItem) {
        guard let taskName = todo.name else { return }
        titleLabel.text = "Todo Task: \(taskName)"
        guard let description = todo.detail else { return }
        descriptionLabel.text = "Detail about Task: \(description)"
        guard let time = todo.completionTime else { return }
        completionLabel.text = "Remind me in \(time) hours"
        viewModel.createNotification(todo)
    }
}
