//
//  ContentView.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            
            List(viewModel.chiens, id: \.name){ dog in
                HStack {
                    Spacer()
                    DogCard(name: dog.name, poids: dog.weight, age: dog.age)
                    Spacer()
                     
                }
                .swipeActions() {
                    Button(role: .destructive, action: {
                         remove(dog: dog)
                    }, label: {
                        Image(systemName: "trash")
                    })
                }
            }
            HStack {
                Spacer()

                Button {
                    viewModel.getDogs()
                } label: {
                    Text("Rappel")
                        .textAspect()
                }
                Spacer()
            }
        }
        .onAppear {
            viewModel.getDogs()
        }
    }
    
    private func remove(dog: Chien) {
        viewModel.removeDog(dog: dog)
    }
}

#Preview {
    ContentView()
}
