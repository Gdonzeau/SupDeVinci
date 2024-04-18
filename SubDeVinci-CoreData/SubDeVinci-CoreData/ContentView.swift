//
//  ContentView.swift
//  SubDeVinci-CoreData
//
//  Created by Guillaume on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
   // @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    @State var students: [Student] = []
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
                viewModel.saveStudent(name: "Albert")
                actualize()
            }
            
            Spacer()
        }
        .onAppear() {
            actualize()
        }
        .padding()
    }
    
    func remove(student: Student) {
        viewModel.deleteStudent(student: student)
    }
    func actualize() {
        students = viewModel.getAllStudents()
    }
}

#Preview {
    ContentView()
}
