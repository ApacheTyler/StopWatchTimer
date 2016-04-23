//
//  StopWatchTimer.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class Timer {
    
    private var timer = NSTimer()
    
    class func getInstance() -> Timer{
        return Timer()
    }
        
    func startTimer (timerTarget: AnyObject, timerSelector: Selector) -> Void {
         self.timer =  NSTimer.scheduledTimerWithTimeInterval(1, target: timerTarget, selector: timerSelector, userInfo: nil, repeats: true)
    }
    
    func stopTimer () -> Void {
        self.timer.invalidate()
    }
    
    func resetTimer () -> Void {
        self.timer.invalidate()
        self.timer = NSTimer()
    }
    
}