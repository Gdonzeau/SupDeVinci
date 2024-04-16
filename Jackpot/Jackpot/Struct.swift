//
//  Struct.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct Chien {
    let name: String
    let weight: Int
    let age: Int
    let color: Color
}

class Chat {
    let name: String
    let size: Int
    
    init(nom: String, taille: Int) {
        self.name = nom
        self.size = taille
    }
}
