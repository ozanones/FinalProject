//
//  CoreDataService.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 14.10.2021.
//

import Foundation

class CoreDataService: CoreDataServiceProtocol{
    
    private let coreDataService = CoreDataFunctionalService.instance
    
    func todoItems(completion: @escaping (TodoItem?, Error?) -> Void) {
        coreDataService.fetchFromCoreData(completion)
    }
}

protocol CoreDataServiceProtocol {
    func todoItems(completion: @escaping (TodoItem?, Error?) -> Void)
}
