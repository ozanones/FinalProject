//
//  TodoListViewController.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListViewController: UIViewController, TodoListViewProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var presenter: TodoListPresenterProtocol!
    var todoListItems: [TodoListPresentation] = []
    var filteredTodos: [TodoListPresentation] = []
    
    override func viewDidLoad() {
        searchBar.delegate = self
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    func handleOutput(_ output: TodoListPresenterOutput) {
        switch output {
        case .showTodoListItems(let todoListItems):
            self.todoListItems = todoListItems
            self.filteredTodos = todoListItems
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    var datePicker:UIDatePicker = UIDatePicker()
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add Task", message: "You need to fill the all sections in order to add task", preferredStyle: .alert)
        alert.addTextField { (taskName) in
            taskName.placeholder = "Add Task Here..."
        }
        alert.addTextField { (completionTime) in
            completionTime.keyboardType = .numberPad
            completionTime.placeholder = "Enter After How Many Hours Later to be Nofified..."
        }
        alert.addTextField { (detail) in
            detail.placeholder = "Details About Your Task..."
        }
        
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            let nameTaskField = alert.textFields?[0]
            let completionTimeField = alert.textFields?[1]
            let detailTaskField = alert.textFields?[2]

            let newTask = TodoListPresentation(name: nameTaskField?.text ?? "", completionTime: completionTimeField?.text ?? "", detail: detailTaskField?.text ?? "")
            
            self.presenter.addTodo(newTask)

            self.presenter.viewDidLoad()

        }
        alert.addAction(submitButton)
        present(alert, animated: true)
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
        return filteredTodos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        cell.textLabel?.text = filteredTodos[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Delete") { action, view, completion in

            let taskToRemove = self.filteredTodos[indexPath.row]

            self.presenter.remove(taskToRemove)
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
}

// MARK: UISearchBarDelegate
extension TodoListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredTodos = todoListItems

        if searchText.isEmpty {
            filteredTodos = todoListItems
                } else {
                    filteredTodos = todoListItems.filter { $0.name.contains(searchText) }
                }
            tableView.reloadData()
    }
}
