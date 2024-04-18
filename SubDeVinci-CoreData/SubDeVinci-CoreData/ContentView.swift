//
//  ContentView.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.managedObjectContext) var context
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Inconnu")
                    .swipeActions {
                        Button(role: .destructive, action: {
                                remove(student: student)
                            }, label: {
                                Image(systemName: "trash")
                            })
                    }
            }
            .background(.blue)
            
            Button("Save") {
                let registeredStudent = Student(context: context)
                registeredStudent.id = UUID()
                registeredStudent.name = "Test"
                //try? context.save()
                
                do {
                    try context.save()
                    // Série d'actions dont certaines peuvent engendrer des erreurs
                } catch {
                    // En cas d'erreur, exécuter cette partie
                    print("Je n'ai pas réussi à sauvegarder les données: \(error)")
                }
                //name = "" // On vide après appui sur le bouton
            }
            
            Spacer()
        }
        .padding()
    }
    
    func remove(student: Student) {
        context.delete(student)
        do {
            try context.save()
        } catch {
            print("Error while deleting: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
