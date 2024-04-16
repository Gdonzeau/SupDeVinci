//
//  DogCard.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct DogCard: View {
    let name: String
    let poids: Int
    let age: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.pink)
                .frame(width: 250, height: 250)
            
            VStack {
                ZStack {
                    Text(name)
                        .textAspect()
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(LinearGradient(colors: [.blue, .yellow, .black], startPoint: .bottomLeading, endPoint: .topTrailing))
                        .frame(width: 200, height: 140)
                    Text("pds: \(poids)kg, âge: \(age) ans")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue.opacity(0.6))
                        .frame(width: 180, height: 120)
                }
            }
        }
    }
}

#Preview {
    DogCard(name: "Kiki", poids: 89, age: 3)
}
