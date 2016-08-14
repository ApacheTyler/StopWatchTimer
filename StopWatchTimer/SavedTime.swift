//
//  SavedTime.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/14/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class SavedTime {
    
    var dateSaved: String
    var timeFormat: String
    var timerValue: Int
    var title: String
    
    init (timeFormat: String, timerValue: Int, title: String) {
        self.dateSaved = CurrentFormattedDate.getTodaysDate()
        self.timeFormat = timeFormat
        self.timerValue = timerValue
        self.title = title
    }
    
}
