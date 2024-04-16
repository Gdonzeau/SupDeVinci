//
//  ContentViewModel.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    var model = Model()
    var received: Bool = false
    @Published var chiens: [Chien] = []
    
    func getDogs() {
        chiens = model.dataBase
    }
    
    func removeDog(dog: Chien) {
        
    }
}
