//
//  AddDogView.swift
//  Jackpot
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

struct AddDogView: View {
    @StateObject var viewModel = AddDogViewModel()
    @State var dogColor: AvailableColors = .white
   // @State var number = 0
    var body: some View {
        VStack {
            /*
            Button("The number is \(number)") {
                number += 1
            }
             */
            //.aspectButton()
            
            Text("Le nom du chien est : \(viewModel.name)")
            Text("L'âge du chien est : \(viewModel.age)")
            Text("Le poids du chien est : \(viewModel.weight) kg")
            
            Form {
                TextField("Name", text: $viewModel.name) {
                    
                }
                Stepper("Age: \(viewModel.age)", value: $viewModel.age, in: Carac.ageRange) {_ in 
                    
                }
                TextField("Poids", text: $viewModel.weight) {
                    
                }
                Picker("Couleur", selection: $dogColor) {
                    ForEach(AvailableColors.allCases, id: \.self) { color in
                        Text(color.rawValue)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                    }
                }
                .pickerStyle(.wheel)
                
                Button("Submit") {
                    viewModel.color = dogColor.color
                    viewModel.addDogToList()
                    viewModel.resetData()
                }
                .alert(viewModel.errorMessage, isPresented: $viewModel.isAlert) {
                    
                }
            }
            
            
            
        }
        .navigationTitle("Ajouter un chien")
    }
}

#Preview {
    AddDogView()
}
