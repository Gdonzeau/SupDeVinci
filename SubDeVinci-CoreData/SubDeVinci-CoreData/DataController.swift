//
//  DataController.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 17/04/2024.
//
import CoreData
import Foundation

class DataController: ObservableObject {
    static var shared = DataController()
        
    let container = NSPersistentContainer(name: "StorageStudents")
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    
    private init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    func saveStudent(name: String) {
        let registeredStudent = Student(context: viewContext)
        registeredStudent.name = name
        registeredStudent.id = UUID()
        
        do {
            try viewContext.save()
        } catch {
            print("Je n'ai pas réussi à sauvegarder les données: \(error)")
        }
    }
    
    func remove(student: Student) {
        viewContext.delete(student)
        do {
            try viewContext.save()
        } catch {
            print("Je n'ai pas réussi à sauvegarder les données: \(error)")
        }
    }
    
    func getAllStudents() -> [Student] {
        let request = NSFetchRequest<Student>(entityName: "Student")

            do {
                return try viewContext.fetch(request)
            } catch {
                return []
            }
    }
}
