//
//  Struct.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct Chien: Identifiable {
    let id = UUID()
    let name: String
    let weight: Int
    let age: Int
    let color: Color
    
    static func == (lhs: Chien, rhs: Chien)-> Bool {
        lhs.id == rhs.id
    }
    
    static func === (lhs: Chien, rhs: Oiseau) -> Bool {
        lhs.id == rhs.id
    }
}

struct Oiseau: Identifiable {
    let id = UUID()
    let name: String
    let hasFlyLicence: Bool
}

class Chat {
    let name: String
    let size: Int
    
    init(nom: String, taille: Int) {
        self.name = nom
        self.size = taille
    }
}
