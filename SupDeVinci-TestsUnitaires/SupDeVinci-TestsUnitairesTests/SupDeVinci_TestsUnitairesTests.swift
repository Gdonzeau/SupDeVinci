//
//  SupDeVinci_TestsUnitairesTests.swift
//  SupDeVinci-TestsUnitairesTests
//
//  Created by Guillaume on 18/04/2024.
//

import XCTest
@testable import SupDeVinci_TestsUnitaires

final class SupDeVinci_TestsUnitairesTests: XCTestCase {
    var model: Model!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        model = Model()
        model.chiens = []
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    // BDD : Behaviour Driven Development
    func testGiven___When___Then___() {
        
    }
    
    func testGivenNoDogsInArrayWhenAddingDogThenOneDogInTheArray() {
        XCTAssertTrue(model.chiens.isEmpty == true)
        let tiDog: Chien = Chien(id: 1, name: "Canis", age: 4)
        model.addDog(dog: tiDog)
        XCTAssertTrue(model.chiens.count == 1)
    }
    
    func testGivenTwoDogsInArrayWhenRemovingTheFirstDogThenOneDogLeft() {
        let firstDog = Chien(id: 2, name: "Kiki", age: 3)
        let secondDog = Chien(id: 1, name: "Rex", age: 5)
        model.chiens = [firstDog, secondDog]
        XCTAssertTrue(model.chiens.count == 2)
        model.removeDog(dog: firstDog)
        XCTAssertTrue(model.chiens.count == 1)
    }
    
    func testGivenKikiAtIndex2WhenAskingIndexOfKikiThenReturn2() {
        let firstDog = Chien(id: 2, name: "Travis", age: 3)
        let secondDog = Chien(id: 1, name: "Rex", age: 5)
        let thirdDog = Chien(id: 3, name: "Kiki", age: 2)
        model.chiens = [firstDog, secondDog, thirdDog]
        let index = model.getIndex(of: thirdDog)!
        XCTAssertTrue(index == 2)
    }
    
    func testGivenNoDogChopInArrayWhenAskingIndexOfChopThenReturnNil() {
        let firstDog = Chien(id: 2, name: "Travis", age: 3)
        let secondDog = Chien(id: 1, name: "Rex", age: 5)
        let thirdDog = Chien(id: 3, name: "Kiki", age: 2)
        let dogChop = Chien(id: 4, name: "Chop", age: 4)
        model.chiens = [firstDog, secondDog, thirdDog]
        let index = model.getIndex(of: dogChop)
        XCTAssertTrue(index == nil)
    }
    
    func testGivenKikiIsTwoYearsOldWhenBirthdayThenKikiThreeYearsOld() {
        let kiki = Chien(id: 1, name: "Kiki", age: 2)
        model.chiens = [kiki]
        XCTAssertTrue(model.chiens[0].age == 2)
        model.birthDay(of: kiki)
        XCTAssertTrue(model.chiens[0].age == 3)
    }

}
