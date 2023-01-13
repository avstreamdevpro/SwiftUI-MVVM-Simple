//
//  MVVM_SampleTests.swift
//  MVVM_SampleTests
//
//  Created by DRAGON on 2021/3/4.
//

import XCTest
@testable import MVVM_Sample

class MVVM_SampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let manager = TodoListManager.emptyState()
        
        XCTAssertTrue(manager.items.count == 0, "Should start with emtpty list of todo's")
        
        manager.addItem()
        
        XCTAssertTrue(manager.items.count == 1, "Should have one todo after adding.")
    }

}
