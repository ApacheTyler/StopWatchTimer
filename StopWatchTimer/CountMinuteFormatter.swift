//
//  CountMinuteFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class CountMinuteFormatter: BaseCountFormatter, CountFormattingProtocol {
    
    func formatWithInterval(count: Double) -> String {
        return self.getCountFormattedAsMinuteWithInterval(count)
    }
    
    func formatWithoutInterval(count: Double) -> String {
        return self.getCountFormattedAsMinute(count)
    }
    
    private func getCountFormattedAsMinuteWithInterval(count: Double) -> String {
        let countFormattedAsMinute = (count/6000) % 60
        let nearestMinute = floor(countFormattedAsMinute)
        return self.getCountAsString(nearestMinute);
    }
    
    private func getCountFormattedAsMinute(count: Double) -> String {
        let countFormattedAsMinute = (count/6000)
        let nearestMinute = floor(countFormattedAsMinute)
        return self.getCountAsString(nearestMinute);
    }
    
}