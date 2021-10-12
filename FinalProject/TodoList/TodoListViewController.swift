//
//  TodoListViewController.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListViewController: UIViewController, TodoListItemsProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var presenter: TodoListPresenterProtocol!
    
    var todoListItems: [TodoListPresentation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    func showTodoItems(_ output: TodoListPresenterOutput) {
        switch output {
        case .showTodoListItems(let todoListItems):
            self.todoListItems = todoListItems
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    @IBAction func addButtonTapped(_ sender: Any) {
        presenter.addButtonTapped()
    }
    
}

// MARK: UITableViewDelegate
extension TodoListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow(at: indexPath)
    }
}

// MARK: UITableViewDataSource
extension TodoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        cell.textLabel?.text = todoListItems[indexPath.row].title
        return cell
        
    }
    
    
}
