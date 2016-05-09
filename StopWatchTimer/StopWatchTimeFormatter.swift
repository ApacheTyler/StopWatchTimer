//
//  StopWatchTimeFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class StopWatchTimeFormatter {
    
    var formatter: TimeFormattingProtocol
    var availableFormats: StopWatchTimerFormats
    
    init () {
        self.formatter = TimeSecondHundreathFormatter()
        self.availableFormats = StopWatchTimerFormats()
    }
    
    func format(count: Double) -> String {
        let countFormattedAsTime = self.formatter.format(count)
        return countFormattedAsTime
    }
    
    func setFormatterToSH() -> Void {
        self.formatter = availableFormats.SH_FORMAT
    }
    
    func setFormatterToMSH() -> Void {
        self.formatter = availableFormats.MSH_FORMAT
    }
    
    func setFormatterToHMS() -> Void {
        self.formatter = availableFormats.HMS_FORMAT
    }
    
}