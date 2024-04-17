//
//  MainView.swift
//  Jackpot
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(LocalizedStringKey("Title"))
                    
                NavigationLink("Liste de chiens") {
                    ListDogsView()
                }
                
                NavigationLink("Inscrire un chien") {
                    AddDogView()
                }
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Colors.backgroundColor)
            .navigationTitle("Main")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
        
    }
}

#Preview {
    MainView()
}
