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
        do {
            self.todoItems = try CoreDataFunctionalService.context.fetch(TodoItem.fetchRequest())
            
                self.delegate?.handleOutput(_output: .showTodoList(self.todoItems))
            
        } catch  {
            print("Error occured while fetching TodoItems from Core Data")
        }
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        //TODO
    }
    
    
}
