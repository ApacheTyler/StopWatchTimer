//
//  StopWatchTimerTests.swift
//  StopWatchTimerTests
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import XCTest
@testable import StopWatchTimer

class TimerTests: XCTestCase {
    
    var timerInstance : Timer = Timer.getInstance();
    
    override func setUp() {
        super.setUp()
        self.timerInstance = Timer.getInstance()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        super.tearDown()
        self.timerInstance.resetTimer()
    }
    
    func testGetInstance() {
        // This is an example of a functional test case.
        let timer = Timer.getInstance()
        XCTAssertNotNil(timer, "Timer is not nil")
    }
    
    func testTimerIsRunning () {
        self.timerInstance.startTimer(self, timerSelector: nil)
        let isTimerValid = self.timerInstance.timer.valid
        XCTAssertTrue(isTimerValid)
    }
    
    func testTimerIsStopped () {
        self.timerInstance.startTimer(self, timerSelector: nil)
        self.timerInstance.stopTimer()
        let isTimerValid = self.timerInstance.timer.valid
        XCTAssertFalse(isTimerValid)
    }
    
    func testTimerIsReset () {
        self.timerInstance.startTimer(self, timerSelector: nil)
        self.timerInstance.resetTimer()
        let isTimerValid = self.timerInstance.timer.valid
        XCTAssertFalse(isTimerValid)
    }
    
    
    
}
