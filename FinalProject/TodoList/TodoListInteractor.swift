//
//  TodoListInteractor.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

class TodoListInteractor: NSObject, TodoListInteractorProtocol {
    
    weak var delegate: TodoListInteractorDelegate?
    private let service: CoreDataServiceProtocol
    private var todoItems: [TodoItem] = []
    
    init(service: CoreDataServiceProtocol) {
        self.service = service
    }
    
    func viewDidLoad() {
        fetchFromCoreData()
    }
    
    func fetchFromCoreData() {
        
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        //TODO
    }
    
    
}
