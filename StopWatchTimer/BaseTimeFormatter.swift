//
//  BaseTimeFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 5/7/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class BaseTimeFormatter {
    
    let HUNDREATH_FORMATTER: CountFormattingProtocol = CountHundreathFormatter()
    let SECOND_FORMATTER: CountFormattingProtocol = CountSecondFormatter()
    let MINUTE_FORMATTER: CountFormattingProtocol = CountMinuteFormatter()
    let HOUR_FORMATTER: CountFormattingProtocol = CountHourFormatter()
    
    func createFormatString(args:String ...) -> String {
        return args.joinWithSeparator(":")
    }
    
}