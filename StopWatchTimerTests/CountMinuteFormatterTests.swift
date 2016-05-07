//
//  CountMinuteFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/30/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class CountMinuteFormatterTests: XCTestCase {

    var minuteFormatter : CountFormattingProtocol = CountMinuteFormatter()
    
    func testFormatWhenCountIsZeroWithInterval() {
        let result = self.minuteFormatter.formatWithInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsZeroWithoutInterval() {
        let result = self.minuteFormatter.formatWithoutInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneMinutesWithInterval() {
        let result = self.minuteFormatter.formatWithInterval(6000)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneMinutesWithoutInterval() {
        let result = self.minuteFormatter.formatWithoutInterval(6000)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatWhenCountIsAtTwoMinutesWithInterval() {
        let result = self.minuteFormatter.formatWithInterval(12000)
        XCTAssertEqual("02", result, "Expected 01 but got \(result)")
    }
    
    func testFormatWhenCountIsOverTenMinutesWithInterval() {
        let result = self.minuteFormatter.formatWithInterval(60234)
        XCTAssertEqual("10", result, "Expected 10 but got \(result)")
    }
    
    func testFormatWhenCountIsOverTenMinutesWithoutInterval() {
        let result = self.minuteFormatter.formatWithoutInterval(60234)
        XCTAssertEqual("10", result, "Expected 10 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneHourWithInterval() {
        let result = self.minuteFormatter.formatWithInterval(360000)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneHourWithoutInterval() {
        let result = self.minuteFormatter.formatWithoutInterval(360000)
        XCTAssertEqual("60", result, "Expected 60 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneHourAndOneMinuteWithoutInterval() {
        let result = self.minuteFormatter.formatWithoutInterval(366000)
        XCTAssertEqual("61", result, "Expected 61 but got \(result)")
    }


}
