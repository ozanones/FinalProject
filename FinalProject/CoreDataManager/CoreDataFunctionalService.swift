//
//  CoreDataFunctionalService.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 14.10.2021.
//

import UIKit
import CoreData

class CoreDataFunctionalService {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TodoItem")
    
    
    static let instance = CoreDataFunctionalService()
    
    func fetchFromCoreData(_ completion: @escaping (TodoItem?, Error) -> Void){
        // fetch from Core Data
    }
    func addToCoreData(){
        // add to Core Data
    }
}


