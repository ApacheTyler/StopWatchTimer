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
        self.trySetTimeFormatter(.SH_FORMAT)
    }
    
    func setFormatterToMSH() -> Void {
        self.trySetTimeFormatter(.MSH_FORMAT)
    }
    
    func setFormatterToHMS() -> Void {
        self.trySetTimeFormatter(.HMS_FORMAT)
    }
    
    private func trySetTimeFormatter(format: StopWatchTimerFormats) -> Void {
        do {
            try self.formatter = self.getFormatterFromAvailableFormat(format)
            self.currentFormat = format
        } catch {
            print("Failed to set time format")
        }
    }
    
    func getFormatterFromAvailableFormat(format: StopWatchTimerFormats) throws -> TimeFormattingProtocol {
        switch format {
        case .SH_FORMAT:
                return TimeSecondHundreathFormatter()
        case .MSH_FORMAT:
                return TimeMinuteSecondHundreathFormatter()
        case .HMS_FORMAT:
                return TimeHourMinuteSecondFormatter()
        default: //I Realize this code will never be executed, but I'm playing with exception handeling
                throw StopWatchTimerFormatsErrors.InvalidFormat
        }
    }
    
}