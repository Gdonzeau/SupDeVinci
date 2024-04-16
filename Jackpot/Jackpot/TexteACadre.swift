//
//  TexteACadre.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct TexteACadre: View {
    var text: String
    var body: some View {
        Text(text)
        .font(.title)
        .background(.red)
        .padding()
        .background(.blue)
        .padding()
        .background(.yellow)
    }
}

#Preview {
    TexteACadre(text: "Test")
}
