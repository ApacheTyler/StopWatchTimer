//
//  TimerCountTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import XCTest
@testable import StopWatchTimer

class TimerCountTests: XCTestCase {
    
    var timerCounterInstance : Counter = Counter()
    
    override func setUp() {
        super.setUp()
        self.timerCounterInstance = Counter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }


    func testDefaultInit() {
        let defaultCountValue = self.timerCounterInstance.getCount()
        XCTAssertEqual(defaultCountValue, 0, "Timer count should be 0 by default, but is \(defaultCountValue)")
    }
    
    func testUpdateCount() {
        self.timerCounterInstance.updateCount()

        let updatedCountValue = self.timerCounterInstance.getCount()
        XCTAssertEqual(updatedCountValue, 1, "Updated count value should be 1, but is \(updatedCountValue)")
    }
    
    func testSetCount() {
        self.timerCounterInstance.setCount(33)
        let countValue = self.timerCounterInstance.getCount()
        XCTAssertEqual(33, countValue, "Count value should be 33, but is \(countValue)")
    }
    
}
