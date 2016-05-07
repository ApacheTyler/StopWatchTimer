//
//  TimeHourMinuteSecondFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class TimeHourMinuteSecondFormatterTests: XCTestCase {

    let timeFormatter: TimeFormattingProtocol = TimeHourMinuteSecondFormatter()
    
    func testTimeFormatterWhenCountIsZero() {
        let result = self.timeFormatter.format(0)
        XCTAssertEqual("00:00:00", result, "Expected 00:00:00 but got \(result)")
    }
    
    func testTimeFormatterWhenCountIsOne() {
        let result = self.timeFormatter.format(1)
        XCTAssertEqual("00:00:00", result, "Expected 00:00:00 but got \(result)")
    }
    
    func testTimeWhenAtOneSecond() {
        let result = self.timeFormatter.format(100)
        XCTAssertEqual("00:00:01", result, "Expected 00:00:01 but got \(result)")
    }
    
    func testTimeWhenSecondsIsTwoDigits() {
        let result = self.timeFormatter.format(1000)
        XCTAssertEqual("00:00:10", result, "Expected 00:00:10 but got \(result)")
    }
    
    func testTimeWhenAtOneMinute() {
        let result = self.timeFormatter.format(6000)
        XCTAssertEqual("00:01:00", result, "Expected 00:01:00 but got \(result)")
    }
    
    func testTimeWhenMinuteIsTwoDigits() {
        let result = self.timeFormatter.format(60000)
        XCTAssertEqual("00:10:00", result, "Expected 00:10:00 but got \(result)")
    }
    
    func testTimeWhenAtOneHour() {
        let result = self.timeFormatter.format(360000)
        XCTAssertEqual("01:00:00", result, "Expected 01:0:00 but got \(result)")
    }
    
    func testTimeWhenAtOneHourIsTwoDigits() {
        let result = self.timeFormatter.format(360000 * 10)
        XCTAssertEqual("10:00:00", result, "Expected 10:00:00 but got \(result)")
    }

    
}
