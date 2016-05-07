//
//  BaseCountFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/30/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class BaseCountFormatter {
    
    var interval: Int = 0;
    
    internal func getCountAsString(count: Double) -> String {
        let countAsString = String(format: "%.0f", count)
        if (count < 10) {
            return "0" + countAsString
        } else {
            return countAsString
        }
    }

    
}