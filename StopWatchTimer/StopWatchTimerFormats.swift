//
//  StopWatchTimerFormats.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation


public class StopWatchTimerFormats {
    
    var SH_FORMAT: TimeFormattingProtocol
    var MSH_FORMAT: TimeFormattingProtocol
    var HMS_FORMAT: TimeFormattingProtocol
    
    init () {
        self.SH_FORMAT = TimeSecondHundreathFormatter()
        self.MSH_FORMAT = TimeMinuteSecondHundreathFormatter()
        self.HMS_FORMAT = TimeHourMinuteSecondFormatter()
    }
    
}