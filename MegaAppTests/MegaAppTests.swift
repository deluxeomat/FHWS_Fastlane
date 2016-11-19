//
//  MegaAppTests.swift
//  MegaAppTests
//
//  Created by Michael on 19.11.16.
//  Copyright © 2016 Michael Kilian. All rights reserved.
//

import XCTest

@testable import MegaApp

class MegaAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(testMyCalcFunc())
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMyCalcFunc() -> Bool {
        let myPi = String(format: "%0.5f", Calc.getPi())
        let iosPi = String(format: "%0.5f", 2 * M_PI)
                
        return myPi == iosPi ?  true : false
        
    }
    
}
