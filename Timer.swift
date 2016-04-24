//
//  StopWatchTimer.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class Timer {
    
    var timer : NSTimer
    
    init () {
        self.timer = NSTimer()
    }
        
    public func startTimer (timerTarget: AnyObject, timerSelector: Selector, timerUserInfo : AnyObject? = nil) -> Void {
         self.timer =  NSTimer.scheduledTimerWithTimeInterval(1, target: timerTarget, selector: timerSelector, userInfo: timerUserInfo, repeats: true)
    }
    
    public func stopTimer () -> Void {
        self.timer.invalidate()
    }
    
    public func resetTimer () -> Void {
        self.timer.invalidate()
        self.timer = NSTimer()
    }
    
    public func isActive () -> Bool {
        return self.timer.valid
    }
    
}