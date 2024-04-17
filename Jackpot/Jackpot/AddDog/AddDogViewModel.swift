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
    
    var isAlert: Bool = false
    var errorMessage: String = ""
    
    private func createDog() -> Chien? {
        guard let convertedWeight = Int(weight) else {
            isAlert = true
            errorMessage = "Vous devez écrire au moins un chiffre."
            return nil
        }
        guard name != "" else {
            isAlert = true
            errorMessage = "Vous devez écrire au moins une lettre."
            return nil
        }
        guard !name.isEmpty else {
            isAlert = true
            errorMessage = "Vous devez écrire au moins une lettre."
            return nil
        }
        let dog = Chien(name: name, weight: convertedWeight, age: age, color: color)
        print(dog)
        return dog
    }
    
    func addDogToList() {
        guard let dog = createDog() else { return }
        model.dataBase.append(dog)
    }
    // Utilisation d'un enum
    let color1: AvailableColors = .purple
    let color2: String = AvailableColors.purple.rawValue
    let colors3: Color = AvailableColors.purple.color
    
    func resetData() {
        name = ""
        weight = ""
        age = 0
        color = .white
    }
}
