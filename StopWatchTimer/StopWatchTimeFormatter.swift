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
    var currentFormat: StopWatchTimerFormats
    
    init () {
        self.formatter = TimeSecondHundreathFormatter()
        self.currentFormat = .SH_FORMAT
    }
    
    func format(count: Double) -> String {
        let countFormattedAsTime = self.formatter.format(count)
        return countFormattedAsTime
    }
    
    func setFormatterToSH() -> Void {
        self.setTimeFormatter(.SH_FORMAT)
    }
    
    func setFormatterToMSH() -> Void {
        self.setTimeFormatter(.MSH_FORMAT)
    }
    
    func setFormatterToHMS() -> Void {
        self.setTimeFormatter(.HMS_FORMAT)
    }
    
    private func setTimeFormatter(format: StopWatchTimerFormats) -> Void {
        self.formatter = self.getFormatterFromAvailableFormat(format)
        self.currentFormat = format
    }
    
    func getFormatterFromAvailableFormat(format: StopWatchTimerFormats) -> TimeFormattingProtocol {
        switch format {
        case .SH_FORMAT:
                return TimeSecondHundreathFormatter()
        case .MSH_FORMAT:
                return TimeMinuteSecondHundreathFormatter()
        case .HMS_FORMAT:
                return TimeHourMinuteSecondFormatter()
        }
    }
    
}