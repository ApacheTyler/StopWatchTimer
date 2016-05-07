//
//  StopWatchTimeFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import Foundation

protocol CountFormattingProtocol {
    
    func formatWithInterval(count: Double) -> String
    
    func formatWithoutInterval(count: Double) -> String
    
}
