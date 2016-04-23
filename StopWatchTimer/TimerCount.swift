//
//  TimerCount.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class TimerCount {
    
    private var count : Int;
    
    init () {
        self.count = 0;
    }
    
    func updateCount () -> Void {
        self.count += 1
    }
    
    func resetCount () -> Void {
        self.count = 0
    }
    
    func getCount () -> Int {
        return self.count
    }
    
    func setCount (numberToSetCountTo : Int) -> Void {
        self.count = numberToSetCountTo
    }
    
}