//
//  TranslatePlistTest.swift
//  SwiftPropertyListDemoTests2
//
//  Created by xcodedev on 20/12/2017.
//  Copyright © 2017 xcodedev. All rights reserved.
//

//1. Red (Test Failed), 2. Green (Test Passed), 3. Refactor (Blue)

import XCTest
@testable import SwiftPropertyListDemo

class TranslatePlistTest: XCTestCase {
    
    var propertyListModel: PropertyListModel!
    
    override func setUp() {
        super.setUp()
        
        let translatePlistToModel = TranslatePlistToModel()
        let bundle = Bundle(for: TranslatePlistTest.self)
        
        propertyListModel = translatePlistToModel.translatePlistData(fileName: "dataTest", in: bundle)
    }
    
    func testTranslationHasExpectedItemsCount() {
        XCTAssert(propertyListModel.pies.count == 6, "Collection didn't have the expected number of pies.")
    }
    
    func testPropertiesHasExpectedValues() {
        XCTAssertEqual(propertyListModel.blue, 0.3)
        XCTAssertEqual(propertyListModel.green, 0)
        XCTAssertEqual(propertyListModel.red, 0.3)
        XCTAssertEqual(propertyListModel.inverseColors, false)
    }
    
    func testFirstPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 0,pieName: "Cherry")
    }
    
    func testSecondPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 1,pieName: "Apple")
    }
    
    func testThirdPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 2,pieName: "French Silk")
    }
    
    func testFourthPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 3,pieName: "Coconut Cream")
    }
    
    func testFifthPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 4,pieName: "Blueberry")
    }
    
    func testSixthPieHasExpectedValues() {
        verifyPiesHasExpectedValues(index: 5,pieName: "Boston Cream")
    }
    
    func verifyPiesHasExpectedValues(index: Int, pieName: String) {
        
        let pie = propertyListModel.pies[index]
        let plistIndex = index + 1
        
        XCTAssertEqual(pie, "\(pieName) \(plistIndex)")

    }
    
}


//
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
