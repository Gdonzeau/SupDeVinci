//
//  ContentView.swift
//  SubDeVinci-UserDefault
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount: Int = UserDefaults.standard.integer(forKey: "Tap")
    @State var text: String = UserDefaults.standard.string(forKey: "Text") ?? ""
    
    @State var eleve = [Eleve(id: 0, name: "", size: 0)]
    @State var eleves = [Eleve]()
    //@State var eleve = UserDefaults.standard.data(forKey: "Eleve")
    @AppStorage("tapCount") private var tapCount2 = 0
    
    //@State var eleve: Eleve = UserDefaults.standard.integer(forKey: "Eleve")
    var body: some View {
        
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
    
    private func saveStudent() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(eleves)
            UserDefaults.standard.set(data, forKey: "Eleves")
        } catch {
            print("Error while getting data 'Eleve': (\(error)")
        }
    }
    
    private mutating func getStudent() {
        if let data = UserDefaults.standard.data(forKey: "Eleve") {
            do {
                let decoder = JSONDecoder()
                let eleves = try decoder.decode([Eleve].self, from: data)
                self.eleves = eleves
            } catch {
                print("Unable to Decode Notes (\(error))")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct Eleve: Codable {
    let id: Int
    let name: String
    let size: Int
}
