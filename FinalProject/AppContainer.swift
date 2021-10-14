//
//  AppContainer.swift
//  FinalProject
//
//  Created by Ozan Deniz Ones on 9.10.2021.
//

import Foundation

let appContainer = AppContainer()

class AppContainer {
    let router = AppRouter()
    let service = CoreDataService()
}
