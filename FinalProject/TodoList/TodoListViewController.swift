//
//  TodoListViewController.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import UIKit

class TodoListViewController: UIViewController, TodoListPresenterProtocol {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var presenter: TodoListPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()

    }

}
