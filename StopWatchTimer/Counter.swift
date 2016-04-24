//
//  TimerCount.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class Counter {
    
    internal var count : Int;
    
    public init () {
        self.count = 0;
    }
    
    public func updateCount () -> Void {
        self.count += 1
    }
    
    public func resetCount () -> Void {
        self.count = 0
    }
    
    public func getCount () -> Int {
        return self.count
    }
    
    public func setCount (numberToSetCountTo : Int) -> Void {
        self.count = numberToSetCountTo
    }
    
}