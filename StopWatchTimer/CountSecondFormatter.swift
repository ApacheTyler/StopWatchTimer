//
//  CountSecondFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class CountSecondFormatter: BaseCountFormatter, CountFormattingProtocol {
        
    func formatWithInterval(count: Double) -> String {
        return self.getCountFormattedAsSecondWithInterval(count)
    }
    
    func getCountFormattedAsSecondWithInterval (count: Double) -> String {
        let countAsSecond = (count / 100) % 60
        let countAsSecondRoundedDown = floor(countAsSecond)
        return super.getCountAsString(countAsSecondRoundedDown)
    }
    
    func formatWithoutInterval(count: Double) -> String {
        return self.getCountFormattedAsSecond(count)
    }
    
    func getCountFormattedAsSecond (count: Double) -> String {
        let countAsSecond = (count / 100)
        let countAsSecondRoundedDown = floor(countAsSecond)
        return super.getCountAsString(countAsSecondRoundedDown)
    }
    
}