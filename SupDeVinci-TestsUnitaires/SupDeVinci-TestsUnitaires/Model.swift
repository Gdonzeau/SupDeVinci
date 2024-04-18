//
//  Model.swift
//  SupDeVinci-TestsUnitaires
//
//  Created by Guillaume on 18/04/2024.
//

import Foundation

class Model {
    
    var chiens:[Chien] = []
    
    func addDog(dog: Chien) {
        chiens.append(dog)
    }
    
    func removeDog(dog: Chien) {
        /*
        //01
        let indexOpt = getIndex(of: dog)
        
        if let indexUnwrapped = indexOpt {
            chiens.remove(at: indexUnwrapped)
        }
        //02
        let indexGot = getIndex(of: dog)
        
        if let indexGot {
            chiens.remove(at: indexGot)
        }
        */
        //03
        if let index = getIndex(of: dog) {
            chiens.remove(at: index)
        }
    }
    
    func getIndex(of dogToFind: Chien) -> Int? {
        for (index, dog) in chiens.enumerated() {
            if dog.id == dogToFind.id {
                return index
            }
        }
        return nil
    }
    
    func birthDay(of dog: Chien) {
        if let index = getIndex(of: dog) {
            chiens[index].age += 1
        }
    }
}

struct Chien {
    let id: Int
    var name: String
    var age: Int
}
