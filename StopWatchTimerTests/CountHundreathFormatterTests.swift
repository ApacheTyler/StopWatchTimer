//
//  CountFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest
@testable import StopWatchTimer

class CountFormatterTests: XCTestCase {
    
    var hundreathFormatter : CountFormattingProtocol = CountHundreathFormatter()
    
    func testFormatWhenCountIsZeroWithInterval() {
        let result = hundreathFormatter.formatWithInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatWhenCountIsZeroWithoutInterval() {
        let result = hundreathFormatter.formatWithoutInterval(0)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithInterval() {
        let result = hundreathFormatter.formatWithInterval(5)
        XCTAssertEqual("05", result, "Expected 05 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithoutInterval() {
        let result = hundreathFormatter.formatWithoutInterval(5)
        XCTAssertEqual("05", result, "Expected 05 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberGreaterThanTenWithInterval() {
        let result = hundreathFormatter.formatWithInterval(44)
        XCTAssertEqual("44", result, "Expected 44 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberGreaterThanTenWithoutInterval() {
        let result = hundreathFormatter.formatWithoutInterval(44)
        XCTAssertEqual("44", result, "Expected 44 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberOnIntervalResetWithInterval() {
        let result = hundreathFormatter.formatWithInterval(400)
        XCTAssertEqual("00", result, "Expected 00 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberOnIntervalResetWithoutInterval() {
        let result = hundreathFormatter.formatWithoutInterval(400)
        XCTAssertEqual("400", result, "Expected 400 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberAfterIntervalResetWithInterval() {
        let result = hundreathFormatter.formatWithInterval(688)
        XCTAssertEqual("88", result, "Expected 88 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithNumberAfterIntervalResetWithoutInterval() {
        let result = hundreathFormatter.formatWithoutInterval(688)
        XCTAssertEqual("688", result, "Expected 688 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithHugeNumberWithInterval(){
        let result = hundreathFormatter.formatWithInterval(2304923842342373)
        XCTAssertEqual("73", result, "Expected 73 but got \(result)")
    }
    
    func testFormatHundreathOfSecondWithHugeNumberWithoutInterval(){
        let result = hundreathFormatter.formatWithoutInterval(2304923842342373)
        XCTAssertEqual("2304923842342373", result, "Expected 2304923842342373 but got \(result)")
    }

}
