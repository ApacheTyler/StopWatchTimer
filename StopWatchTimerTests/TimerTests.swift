//
//  StopWatchTimerTests.swift
//  StopWatchTimerTests
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import XCTest
import StopWatchTimer

class TimerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testGetInstance() {
        // This is an example of a functional test case.
        var timer = Timer.getInstance()
        XCTAssertNotNil(timer, "Timer is not nil")
    }
    
    
    
}
