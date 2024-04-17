//
//  ListDogsView.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct ListDogsView: View {
    
    @StateObject var viewModel = ListDogViewModel()
    @State var showDog: Bool = false
    @State var dogToShow: Chien?
    
    //@State var viewToOpen: DogPresentationView?
    
    //let oiseaux: [Oiseau] = [Oiseau(name: "Piaf", hasFlyLicence: false), Oiseau(name: "Titi", hasFlyLicence: true)]
    var body: some View {
        VStack {
            List(viewModel.chiens){ dog in
                HStack {
                    Spacer()
                    DogCard(name: dog.name, poids: dog.weight, age: dog.age, color: dog.color)
                        .onTapGesture {
                            dogToShow = dog
                            showDog = true
                        }
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
        .sheet(isPresented: Binding(
            get: {
                showDog
            }, set: { showDog = $0 }
        )) {
            if let dogToShow {
                DogPresentationView(dog: dogToShow)
            }
        }
    }
    
    private func remove(dog: Chien) {
        viewModel.removeDog(dog: dog)
    }
}

#Preview {
    ListDogsView()
}
