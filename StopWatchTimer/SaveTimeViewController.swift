//
//  SaveTimeViewController.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 6/9/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import UIKit

class SaveTimeViewController: UIViewController {
    
    var formatter = StopWatchTimeFormatterInstance.instance
    var timerCounter = TimerCounterInstance.instance
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var savedTimeLabel: UILabel!
    @IBOutlet weak var formatSegmentOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set format label to correct index
        //Format current time
        //Set to savedTimeLabel text
        //Highlight title text with it defaulted to the date.
        //self.savedTimeLabel.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func formatSegmentValueChanged(sender: AnyObject) {
        //TODO: Format Saved Time
    }
    
    
    
    @IBAction func ConfirmButton(sender: UIButton) {
        //TODO: Save to local storage.
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

}
