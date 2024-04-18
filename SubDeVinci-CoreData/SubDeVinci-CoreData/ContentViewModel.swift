//
//  ContentViewModel.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 18/04/2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    var storageModel = DataController.shared
    
    func saveStudent(name: String) {
        storageModel.saveStudent(name: name)
    }
    func deleteStudent(student: Student) {
        storageModel.remove(student: student)
    }
    
    func getAllStudents() -> [Student] {
        storageModel.getAllStudents()
    }
    
}
