//
//  Model.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import Foundation

class Model {
    
    static var shared = Model()
    
    private init() {}
    
    var dataBase: [Chien] = [
        Chien(name: "Médor", weight: 45, age: 3, color: .brown),
        Chien(name: "Kiki", weight: 2, age: 1, color: .white),
        Chien(name: "Barboss", weight: 6, age: 3, color: .yellow)
    ]
}

