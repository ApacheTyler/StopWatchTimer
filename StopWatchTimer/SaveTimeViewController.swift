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
        self.setTimeFormatterToCurrentFormatIndex()
        self.setSavedTimeLabelToCurrentFormattedTime()
        self.titleTextField.text = CurrentFormattedDate.getTodaysDate()
        self.titleTextField.becomeFirstResponder()
        let tapGesture = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tapGesture);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.setTimeFormatterToCurrentFormatIndex()
    }
    
    @IBAction func titleLabelDidEndOnExit(sender: AnyObject) {
        self.resignFirstResponder()
    }
    
    @IBAction func formatSegmentValueChanged(sender: AnyObject) {
        self.updateCurrentFormatterFormat()
        self.setSavedTimeLabelToCurrentFormattedTime()
    }
    
    @IBAction func ConfirmButton(sender: UIButton) {
        //TODO: Save to local storage.
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func setTimeFormatterToCurrentFormatIndex () -> Void {
        let currentFormat = self.formatter.currentFormat
        switch currentFormat {
        case StopWatchTimerFormats.SH_FORMAT:
            self.formatSegmentOutlet.selectedSegmentIndex = 2
            break
        case StopWatchTimerFormats.MSH_FORMAT:
            self.formatSegmentOutlet.selectedSegmentIndex = 1
            break
        case StopWatchTimerFormats.HMS_FORMAT:
            self.formatSegmentOutlet.selectedSegmentIndex = 0
            break
        }
    }
    
    func updateCurrentFormatterFormat () -> Void {
        switch self.formatSegmentOutlet.selectedSegmentIndex
        {
        case 0:
            self.formatter.setFormatterToHMS()
        case 1:
            self.formatter.setFormatterToMSH()
        case 2:
            self.formatter.setFormatterToSH()
        default:
            self.formatter.setFormatterToHMS()
        }
    }
    
    func setSavedTimeLabelToCurrentFormattedTime() -> Void {
        let currentCount = Double(self.timerCounter.getCurrentCount())
        let currentCountFormattedAsTime = self.formatter.format(currentCount)
        self.savedTimeLabel.text = currentCountFormattedAsTime
    }
    
    func setTimeToCurrentDateIfTitleIsEmptyString() -> Void {
        if(self.titleTextField.text == "") {
            self.titleTextField.text = CurrentFormattedDate.getTodaysDate()
        }
    }
    
    func dismissKeyboard () -> Void {
        view.endEditing(true)
    }
    

}
