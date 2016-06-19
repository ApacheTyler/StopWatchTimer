//
//  CurrentFormattedDate.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 6/19/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class CurrentFormattedDate {
    
    static func getTodaysDate() -> String {
        let date = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        return dateFormatter.stringFromDate(date)
    }
    
}