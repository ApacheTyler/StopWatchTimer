//
//  CountHundreathFormatter.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/24/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

public class CountHundreathFormatter: BaseCountFormatter,CountFormattingProtocol {
    
    
    func formatWithInterval (count: Double) -> String {
        return self.getCountFormattedAsHundreathOfSecondWithInterval(count)
    }
    
    func getCountFormattedAsHundreathOfSecondWithInterval (count: Double) -> String {
        let hundreathOfCount = count % 100
        return getCountAsString(hundreathOfCount)
    }

    func formatWithoutInterval(count: Double) -> String {
        return self.getCountFormattedAsHundreathOfSecond(count)
    }
    
    func getCountFormattedAsHundreathOfSecond (count: Double) -> String {
        return getCountAsString(count)
    }

    
}