//
//  AuthSDKTests.swift
//  AuthSDKTests
//
//  Created by Senthilnathan on 4/4/22.
//

import XCTest
@testable import AuthSDK

class AuthSDKTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAddTwoNumber() {
        let val = 2 + 8
        XCTAssertEqual(10, val)
    }
    
    func testAddThreeNumber() {
        let val = 2 + 8 + 2
        XCTAssertEqual(12, val)
    }

}
