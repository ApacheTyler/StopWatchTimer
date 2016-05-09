//
//  ViewController.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timerCounter = TimerCounter()
    var formatter = StopWatchTimeFormatter()
    
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var FormatSegment: UISegmentedControl!
    @IBOutlet weak var StartStopSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.StartStopSegment.selectedSegmentIndex = 1
        self.TimeLabel.numberOfLines = 1
        self.TimeLabel.adjustsFontSizeToFitWidth = true
        self.TimeLabel.minimumScaleFactor = 0.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startStopSegmentIndexChanged(sender: AnyObject) {
        self.updateTimerStatusBasedOnStartStopSegmentSelectedIndex()
    }
    
    @IBAction func FormatSegmentIndexChanged(sender: UISegmentedControl) {
        switch FormatSegment.selectedSegmentIndex
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
        self.setTimeLabelToCurrentCount()
    }
    
    @IBAction func ResetTimeButton(sender: UIButton) {
        self.resetTimer()
    }
    
    @IBAction func viewSavedButtonPressed(sender: AnyObject) {
        print("Viewing Saved")
    }
    
    @IBAction func saveTimeButtonPressed(sender: AnyObject) {
        print("Saving time")
    }
    
    func updateTimerStatusBasedOnStartStopSegmentSelectedIndex() -> Void {
        switch StartStopSegment.selectedSegmentIndex
        {
        case 0:
            self.startTimer()
            break;
        case 1:
            self.stopTimer()
            break;
        default:
            self.stopTimer()
            break;
        }
    }
    
    func startTimer() -> Void {
        self.timerCounter.start(self.updateLabelWithTimerCount)
    }
    
    func updateLabelWithTimerCount(countToSetLabelTo : Int) -> Void {
        let stringOfTimerCount = self.formatter.format(Double(countToSetLabelTo))
        self.updateLabelWithString(stringOfTimerCount)
    }
    
    func updateLabelWithString (updateString: String) -> Void {
        self.TimeLabel.text = updateString
    }
    
    func setTimeLabelToCurrentCount () -> Void {
        let currentCount = Double(self.timerCounter.getCurrentCount())
        let currentCountFormattedAsTime = self.formatter.format(currentCount)
        self.updateLabelWithString(currentCountFormattedAsTime)
    }
    
    func stopTimer() -> Void {
        self.timerCounter.stop()
    }
    
    func formatHMS() -> Void {
        print("Formatting time as HMS")
    }
    
    func formatMST() -> Void {
        print("Formatting time as MST")
    }
    
    func formatST() -> Void {
        print("Formatting time as ST")
    }
    
    func resetTimer() -> Void {
        self.timerCounter.reset()
        let currentCount = self.timerCounter.getCurrentCount()
        self.updateLabelWithString(String(currentCount))
        self.updateTimerStatusBasedOnStartStopSegmentSelectedIndex()
    }
    
    func printFormattedTime(formatString : String, time : Int) -> String {
        return "Printing formatted time";
    }

}

