//
//  SavedTimeTableViewController.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/13/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import UIKit
import CoreData

class SavedTimeTableViewController: UITableViewController {
    
    var savedTimeList: Array<AnyObject> = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewDidAppear(animated: Bool) {
        do {
            self.savedTimeList = try SavedTimeCoreDataDelegate.getSavedTime()
            tableView.reloadData()
        } catch _ {
            self.savedTimeList = []
            self.showFailedToGetSaveTimeAlert()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.savedTimeList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let savedTimeCell: SavedTimeTableViewCell = tableView.dequeueReusableCellWithIdentifier("SavedTimeCell") as! SavedTimeTableViewCell

        let savedTimeData: NSManagedObject = self.savedTimeList[indexPath.row] as! NSManagedObject
        
        let savedTimerValue: Double = savedTimeData.valueForKey(SavedTimeKeys.TIMER_VALUE.rawValue) as! Double
        let savedTimeFormat: String = savedTimeData.valueForKey(SavedTimeKeys.TIME_FORMAT.rawValue) as! String

        let formattedTime: String = StringBasedTimeFormatter.getTimeOfCountWithStringOfFormat(savedTimerValue, format: savedTimeFormat)
        
        savedTimeCell.SavedTimeFormattedTimeLabel?.text = formattedTime
        savedTimeCell.SavedTimeTitleLabel?.text = savedTimeData.valueForKey(SavedTimeKeys.TITLE.rawValue) as? String
        savedTimeCell.SavedTimeDateSavedLabel?.text = savedTimeData.valueForKey(SavedTimeKeys.DATE_SAVED.rawValue) as? String
        
        
        return savedTimeCell
    }
    
    func showFailedToGetSaveTimeAlert() -> Void {
        let alert = UIAlertController(title: "Failed Find Saved Time", message: "An unexpected error occured and your saved time cannot be found", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
