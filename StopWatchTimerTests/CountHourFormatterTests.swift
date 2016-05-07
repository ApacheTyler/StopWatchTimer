//
//  CountHourFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/30/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class CountHourFormatterTests: XCTestCase {
    
    var hourFormatter : CountFormattingProtocol = CountHourFormatter()
    
    func testFormatWhenCountIsZeroWithInterval() {
        let result = self.hourFormatter.formatWithInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsZeroWithoutInterval() {
        let result = self.hourFormatter.formatWithoutInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneHourWithInterval() {
        let result = self.hourFormatter.formatWithInterval(360000)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatWhenCountIsAtOneHourWithoutInterval() {
        let result = self.hourFormatter.formatWithoutInterval(360000)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatWhenCountIsAtTwoHoursWithoutInterval() {
        let result = self.hourFormatter.formatWithoutInterval(720000)
        XCTAssertEqual("02", result, "Expected 02 but got \(result)")
    }
    
    func testFormatWhenCountIsAtTwenteyFourHoursWithInterval() {
        let result = self.hourFormatter.formatWithInterval(8640000)
        XCTAssertEqual("00", result, "Expected 24 but got \(result)")
    }
    
    func testFormatWhenCountIsAtTwenteyFourHoursWithoutInterval() {
        let result = self.hourFormatter.formatWithoutInterval(8640000)
        XCTAssertEqual("24", result, "Expected 24 but got \(result)")
    }

    
}
