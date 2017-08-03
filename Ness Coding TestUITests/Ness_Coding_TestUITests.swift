//
//  Ness_Coding_TestUITests.swift
//  Ness Coding TestUITests
//
//  Created by Vignan on 8/2/17.
//  Copyright © 2017 Vignan. All rights reserved.
//

import XCTest

class Ness_Coding_TestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Test case to check whether 10 usernames are populated into the tableview
    func testFetchedData() {
        
        let app = XCUIApplication()
        app.buttons["Fetch"].tap()
        let table = app.tables
        let count = table.cells.count
        XCTAssert(count == 10)
        
    }
    
}
