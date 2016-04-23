//
//  TimerCountTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import XCTest
import StopWatchTimer

class TimerCountTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDefaultInit() {
        // This is an example of a functional test case.
        var count = TimerCount()
        var defaultCountValue = count.getCount()
        XCTAssertEqual(defaultCountValue, 0, "Timer count is 0 by default")
    }
    
    func testUpdateCount() {
        var count = TimerCount()
        count.updateCount()
        var updatedCountValue = count.getCount()
        XCTAssertEqual(updatedCountValue, 1, "Updated count value should be 1")
    }
    
    func testSetCount() {
        var count = TimerCount()
        count.setCount(33)
        var countValue = count.getCount()
        XCTAssertEqual(33, countValue, "Count value should be 33")
    }
    
}
