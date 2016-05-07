//
//  CountSecondFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/27/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest
@testable import StopWatchTimer

class CountSecondFormatterTests: XCTestCase {

    var secondFormatter : CountFormattingProtocol = CountSecondFormatter()
    
    func testFormatWhenCountIsZeroWithInterval() {
        let result = secondFormatter.formatWithInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsZeroWithoutInterval() {
        let result = secondFormatter.formatWithoutInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatSecondWithInterval() {
        let result = secondFormatter.formatWithInterval(100)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatSecondWithoutInterval() {
        let result = secondFormatter.formatWithoutInterval(100)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatSecondWithNumberGreaterThanOneHundreadWithInterval() {
        let result = secondFormatter.formatWithInterval(101)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatSecondWithNumberGreaterThanOneHundreadWithoutInterval() {
        let result = secondFormatter.formatWithoutInterval(101)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testFormatSecondWithNumberOnIntervalResetWithInterval() {
        let result = secondFormatter.formatWithInterval(400)
        XCTAssertEqual("04", result, "Expected 04 but got \(result)")
    }
    
    func testFormatSecondWithNumberAfterIntervalResetWithInterval() {
        let result = secondFormatter.formatWithInterval(688)
        XCTAssertEqual("06", result, "Expected 06 but got \(result)")
    }
    
    func testFormatSecondWithNumberThatWillProduceTwoDigitsWithInterval() {
        let result = secondFormatter.formatWithInterval(1200)
        XCTAssertEqual("12", result, "Expected 12 but got \(result)")
    }
    
    func testFormatSecondWithNumberThatIsOneMinuteWithInterval() {
        let result = secondFormatter.formatWithInterval(6000)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatSecondWithNumberThatIsOneMinuteWithoutInterval() {
        let result = secondFormatter.formatWithoutInterval(6000)
        XCTAssertEqual("60", result, "Expected 60 but got \(result)")
    }
    
    func testFormatSecondWithNumberThatIsOneSecondOverWithoutInterval() {
        let result = secondFormatter.formatWithoutInterval(6100)
        XCTAssertEqual("61", result, "Expected 61 but got \(result)")
    }
    
    func testFormatSecondWithNumberOfSecondsInADay() {
        let result = secondFormatter.formatWithoutInterval(8640000)
        XCTAssertEqual("86400", result, "Expected 86400 but got \(result)")
    }
    

}
