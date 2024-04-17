//
//  ContentViewModel.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import Foundation

class ListDogViewModel: ObservableObject {
    var model = Model.shared
    var received: Bool = false
    @Published var chiens: [Chien] = []
    
    func getDogs() {
        chiens = model.dataBase
    }
    
    private func getIndex(of element: Chien) -> Int? {
        for (index, dog) in chiens.enumerated() {
            print("\(dog.name) se trouve à l'index :\(index)")
            if element.name == dog.name {
                return index
            }
        }
        return nil
    }
    
    func removeDog(dog: Chien) {
        let index = getIndex(of: dog)
        if let index {
            chiens.remove(at: index)
        }
        model.dataBase = chiens
    }
}
