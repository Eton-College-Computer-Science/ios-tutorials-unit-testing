//
//  ChocolateBoxUnitTestingTests.swift
//  ChocolateBoxUnitTestingTests
//
//  Created by Cormell, David - DPC on 09/10/2024.
//

import XCTest
@testable import ChocolateBoxUnitTesting

final class ChocolateBoxUnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGetMostCalorificChocolateWith3ChocolatesReturnsLowest() {
        //arrange
        let box = ChocolateBox(chocolates: [Chocolate(name: "Mars", calories: 20),Chocolate(name: "Twix", calories: 40),Chocolate(name: "Mily Way", calories: 30),Chocolate(name: "Twirl", calories: 25)])
        let expected = ("Twix", 40)
        //act
        let actual = box.getMostCalorificChocolate()
        //assert
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
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

}
