//
//  File.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class CountHourFormatter: BaseCountFormatter, CountFormattingProtocol {
    
    func formatWithInterval(count: Double) -> String {
        return self.getCountFormattedAsHourWithInterval(count)
    }
    
    private func getCountFormattedAsHourWithInterval(count: Double) -> String {
        let countFormattedAsMinute = (count/360000) % 24
        let nearestMinute = floor(countFormattedAsMinute)
        return self.getCountAsString(nearestMinute);
    }
    
    func formatWithoutInterval(count: Double) -> String {
        return getCountFormattedAsHour(count)
    }
    
    private func getCountFormattedAsHour(count: Double) -> String {
        let countFormattedAsMinute = (count/360000)
        let nearestMinute = floor(countFormattedAsMinute)
        return self.getCountAsString(nearestMinute);
    }
    
}