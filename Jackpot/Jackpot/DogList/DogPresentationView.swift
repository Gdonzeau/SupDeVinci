//
//  DogPresentationView.swift
//  Jackpot
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

struct DogPresentationView: View {
    let dog: Chien
    var body: some View {
        VStack(spacing: 0) {
            Text("Hello, \(dog.name)!")
                .padding(.bottom, 20)
            DogCard(name: dog.name, poids: dog.weight, age: dog.age, color: dog.color)
        }
    }
}

#Preview {
    DogPresentationView(dog: Chien(name: "Kiki", weight: 3, age: 3, color: .blue))
}
