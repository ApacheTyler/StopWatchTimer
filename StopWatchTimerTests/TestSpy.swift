//
//  TestSpy.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class TestSpy {
    
    var hasBeenCalled : Bool
    
    init () {
        self.hasBeenCalled = false
    }
    
    func testCallBackFunction (someNumber : Int) -> Void {
        self.hasBeenCalled = true
    }
    
}