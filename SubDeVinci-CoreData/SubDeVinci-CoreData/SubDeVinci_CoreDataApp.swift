//
//  SubDeVinci_CoreDataApp.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

@main
struct SubDeVinci_CoreDataApp: App {
    //@StateObject private var dataController = DataController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // Environnement : Data de base au lancement de l'application
                //.environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
