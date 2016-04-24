//
//  TimerCounterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class TimerCounterTests: XCTestCase {
    
    var timerCounterInstace : TimerCounter = TimerCounter()
    
    override func setUp() {
        super.setUp()
        self.timerCounterInstace = TimerCounter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testStart() {
        self.timerCounterInstace.start()
        let isTimerActive = timerCounterInstace.timer.isActive()
        XCTAssertTrue(isTimerActive, "Timer is not active after start is called")
    }
    
    func testStop() {
        self.timerCounterInstace.start()
        self.timerCounterInstace.stop()
        let isTimerActive = self.timerCounterInstace.timer.isActive()
        XCTAssertFalse(isTimerActive, "Timer is active after stop is called")
    }
    
    func testReset() {
        self.timerCounterInstace.start()
        self.timerCounterInstace.reset()
        let isTimerActive = self.timerCounterInstace.timer.isActive()
        let counterValue = self.timerCounterInstace.counter.getCount()
        XCTAssertFalse(isTimerActive, "Timer is active after reset")
        XCTAssertEqual(0, counterValue, "Counter is not at 0 after reset")
    }
    
    func testTick() {
        let callBackSpy = TestSpy();
        self.timerCounterInstace.start(callBackSpy.testCallBackFunction)
        self.timerCounterInstace.tick()
        XCTAssertTrue(callBackSpy.hasBeenCalled, "Tick callback was not called")
    }
    
}
