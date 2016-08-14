//
//  SavedTimeManagedObject.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/13/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import CoreData


class SavedTimeManagedObject: NSManagedObject {
    
    @NSManaged var datesaved: String
    @NSManaged var timerformat: String
    @NSManaged var timervalue: Int64
    @NSManaged var title: String
    
}
