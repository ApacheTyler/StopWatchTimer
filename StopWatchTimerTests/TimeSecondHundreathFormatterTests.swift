//
//  TimeSecondHundreathFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class TimeSecondHundreathFormatterTests: XCTestCase {

    let timeFormatter: TimeFormattingProtocol = TimeSecondHundreathFormatter()
    
    func testTimeFormatterWhenCountIsZero() {
        let result = self.timeFormatter.format(0)
        XCTAssertEqual("00:00", result, "Expected 00:00 but got \(result)")
    }
    
    func testTimeFormatterWhenCountIsOneHundreath() {
        let result = self.timeFormatter.format(1)
        XCTAssertEqual("00:01", result, "Expected 00:01 but got \(result)")
    }
    
    func testTimeFormatterWhenOneHundreathIsTwoDigits() {
        let result = self.timeFormatter.format(10)
        XCTAssertEqual("00:10", result, "Expected 00:10 but got \(result)")
    }
    
    func testTimeFormatterWhenCountIsOneSecond() {
        let result = self.timeFormatter.format(100)
        XCTAssertEqual("01:00", result, "Expected 01:00 but got \(result)")
    }
    
    func testTimeFormatterWhenSecondIsTwoDigits() {
        let result = self.timeFormatter.format(1000)
        XCTAssertEqual("10:00", result, "Expected 10:00 but got \(result)")
    }

    
}
