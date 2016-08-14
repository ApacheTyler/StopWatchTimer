//
//  TimeFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/13/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class StringBasedTimeFormatter {
    
    static func getTimeOfCountWithStringOfFormat(count: Double, format: String) -> String {
        let stopWatchTimerFormat = StopWatchTimerFormats(rawValue: format)!
        let stopWatchtimerFormatter = StopWatchTimeFormatter()
        let timeFormattingProtocol = stopWatchtimerFormatter.getFormatterFromAvailableFormat(stopWatchTimerFormat)
        return timeFormattingProtocol.format(count)
    }
    
    
}