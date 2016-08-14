//
//  SavedTimeCoreDataDelegate.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/14/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class SavedTimeCoreDataDelegate {
    
    static private var savedTimeEntityName = SavedTimeKeys.ENTITY_NAME.rawValue
    
    static func addSavedTime(savedTime: SavedTime) throws -> Void {
        
        let appContext: NSManagedObjectContext = SavedTimeCoreDataDelegate.getAppContext()
        let savedTimeEntity = SavedTimeCoreDataDelegate.getSavedTimeEntity()
        
        let newSavedTimeRecord = SavedTimeManagedObject(entity: savedTimeEntity, insertIntoManagedObjectContext: appContext)
        
        newSavedTimeRecord.datesaved = CurrentFormattedDate.getTodaysDate()
        newSavedTimeRecord.title = savedTime.title
        newSavedTimeRecord.timervalue = Int64(savedTime.timerValue)
        newSavedTimeRecord.timerformat = savedTime.timeFormat
        
        try! appContext.save()
        
    }
    
    static func getSavedTime() throws -> Array<AnyObject> {
        let appContext = SavedTimeCoreDataDelegate.getAppContext()
        let savedTimeRequest = NSFetchRequest(entityName: SavedTimeCoreDataDelegate.savedTimeEntityName)
        return try! appContext.executeFetchRequest(savedTimeRequest)
    }
    
    static private func getAppContext() -> NSManagedObjectContext {
        let appDeleg: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let appContext: NSManagedObjectContext = appDeleg.managedObjectContext
        return appContext
    }
    
    static private func getSavedTimeEntity() -> NSEntityDescription {
        let appContext = SavedTimeCoreDataDelegate.getAppContext()
        let savedTimeEntity = NSEntityDescription.entityForName(SavedTimeCoreDataDelegate.savedTimeEntityName, inManagedObjectContext: appContext)
        return savedTimeEntity!
    }
    
}