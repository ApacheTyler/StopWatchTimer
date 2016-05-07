//
//  BaseCountFormatterTests.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/6/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import XCTest

class BaseCountFormatterTests: XCTestCase {

    let baseCountFormatterInstance: BaseCountFormatter = BaseCountFormatter()
    
    func testAddLeadingZero() {
        let result = self.baseCountFormatterInstance.getCountAsString(1)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }

    func testAddLeadingZeroWithDecimal() {
        let result = self.baseCountFormatterInstance.getCountAsString(1.234023984234)
        XCTAssertEqual("01", result, "Expected 01 but got \(result)")
    }
    
    func testNotAddLeadingZero() {
        let result = self.baseCountFormatterInstance.getCountAsString(12)
        XCTAssertEqual("12", result, "Expected 12 but got \(result)")
    }
    
    func testNotAddLeadingZeroWithDecimal() {
        let result = self.baseCountFormatterInstance.getCountAsString(12.23948203948)
        XCTAssertEqual("12", result, "Expected 12 but got \(result)")
    }
    
}
