//
//  TimerCounter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/23/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class TimerCounter:NSObject {
    
    var counter : Counter
    var timer : Timer
    
    /**
    * TODO: This is not a neccessary property of this class if
    *           there is a way to pass parameters when using a
    *           a closure with the selector of startTimer which.
    **/
    var tickCallBack : (Int) -> Void
    
    private static let defaultTickCallback : (Int) -> Void = {$0}
    
    override init () {
        self.counter = Counter()
        self.timer = Timer()
        self.tickCallBack = TimerCounter.defaultTickCallback
    }
    
    func getCurrentCount () -> Int {
        return self.counter.getCount()
    }
    
    func start ( tickCallBack : (Int) -> Void = TimerCounter.defaultTickCallback) {
        self.tickCallBack = tickCallBack
        self.timer.startTimer(self, timerSelector: Selector("tick"))
    }
    
    func stop () {
        self.timer.stopTimer()
    }
    
    func reset () {
        self.counter.resetCount()
        self.timer.resetTimer()
    }
    
    func tick () {
        self.counter.updateCount()
        let currentCount = self.counter.getCount()
        self.tickCallBack(currentCount)
    }
    
    
}