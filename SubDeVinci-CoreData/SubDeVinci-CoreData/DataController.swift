//
//  DataController.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 17/04/2024.
//
import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "StorageStudents")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
