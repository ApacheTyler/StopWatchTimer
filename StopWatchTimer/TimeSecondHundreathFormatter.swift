//
//  TimeSecondHundreathFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class TimeSecondHundreathFormatter: BaseTimeFormatter, TimeFormattingProtocol {
    
    func format(count: Double) -> String {
        let hundreath = self.HUNDREATH_FORMATTER.formatWithInterval(count)
        let second = self.SECOND_FORMATTER.formatWithoutInterval(count)
        return self.createFormatString(second, hundreath)
    }
        
}