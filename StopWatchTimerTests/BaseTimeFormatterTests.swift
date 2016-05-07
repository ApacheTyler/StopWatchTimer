//
//  BaseTimeFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class BaseTimeFormatterTests: XCTestCase {

    var baseTimeFormatterInstance = BaseTimeFormatter()
    
    func testFormattersAreNotNil() {
        XCTAssertNotNil(baseTimeFormatterInstance.HUNDREATH_FORMATTER)
        XCTAssertNotNil(baseTimeFormatterInstance.SECOND_FORMATTER)
        XCTAssertNotNil(baseTimeFormatterInstance.MINUTE_FORMATTER)
        XCTAssertNotNil(baseTimeFormatterInstance.HOUR_FORMATTER)
    }
    
    func testCreateFormatStringWithZeroParam() {
        let result = baseTimeFormatterInstance.createFormatString()
        XCTAssertEqual("", result, "Expect empty string but got \(result)")
    }
    
    func testCreateFormatStringWithOneParam() {
        let result = baseTimeFormatterInstance.createFormatString("0")
        XCTAssertEqual("0", result, "Expected 0 but got \(result)")
    }
    
    func testCreateFormatStringWitThreeParam() {
        let result = baseTimeFormatterInstance.createFormatString("0", "0", "0")
        XCTAssertEqual("0:0:0", result, "Expected 0:0:0 but got \(result)")
    }

}
