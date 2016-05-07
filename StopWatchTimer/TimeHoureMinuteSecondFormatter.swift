//
//  TimeHoureMinuteSecondFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class TimeHourMinuteSecondFormatter: BaseTimeFormatter, TimeFormattingProtocol {
    
    func format(count: Double) -> String {
        let second = self.SECOND_FORMATTER.formatWithInterval(count)
        let minute = self.MINUTE_FORMATTER.formatWithInterval(count)
        let hour = self.HOUR_FORMATTER.formatWithoutInterval(count)
        return self.createFormatString(hour, minute, second)
    }
    
}
