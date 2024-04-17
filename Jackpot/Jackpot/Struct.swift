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

enum AvailableColors: String {
    
    static let allCases: [AvailableColors] = [.white, .black, .brown, .yellow, .purple, .green, .gray, .grayAlmostWhite]
    
    case white = "blanc"
    case black = "noir"
    case brown = "brun"
    case yellow = "jaune"
    case purple = "violet"
    case green = "vert"
    case gray = "gris"
    case grayAlmostWhite = "gris-blanc"
    
    var color: Color {
        switch self {
                
            case .white:
                return .white
            case .black:
                return .black
            case .brown:
                return .brown
            case .yellow:
                return .yellow
            case .purple:
                return .purple
            case .green:
                return .green
            case .gray:
                return .gray
            case .grayAlmostWhite:
                return Color(cgColor: CGColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1))
        }
    }
}
