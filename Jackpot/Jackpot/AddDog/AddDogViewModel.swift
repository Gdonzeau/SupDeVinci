//
//  AddDogViewModel.swift
//  Jackpot
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

class AddDogViewModel: ObservableObject {
    var model = Model.shared
    
    @Published var name: String = ""
    @Published var weight: String = ""
    @Published var age: Int = 0
    @Published var color: Color = .white
    
    private func createDog() -> Chien {
        let convertedWeight = Int(weight)
        let dog = Chien(name: name, weight: convertedWeight ?? 0, age: age, color: color)
        return dog
    }
    
    func addDogToList() {
        model.dataBase.append(createDog())
    }
    
    func resetData() {
        name = ""
        weight = ""
        age = 0
        color = .white
    }
}
