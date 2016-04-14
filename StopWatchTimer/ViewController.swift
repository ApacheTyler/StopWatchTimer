//
//  ViewController.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 4/14/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var FormatSegment: UISegmentedControl!
    @IBOutlet weak var StartStopSegment: UISegmentedControl!
    
    override internal func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override internal func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction internal func StartStopSegmentIndexChanged(sender: UISegmentedControl) {
        switch StartStopSegment.selectedSegmentIndex
        {
        case 0:
            print("timer started")
            break;
        case 1:
            print("timer stopped")
            break;
        default:
            print("timer stopped")
            break;
        }
    }
    
    @IBAction func FormatSegmentIndexChanged(sender: UISegmentedControl) {
        switch FormatSegment.selectedSegmentIndex
        {
        case 0:
            print("h.m.s")
        case 1:
            print("m.s.t")
        case 2:
            print("s.t")
        default:
            print("h.m.s")
        }
    }
    
    @IBAction func ResetTimeButton(sender: UIButton) {
        self.resetTimer()
    }
    
    private func startTimer() -> Void {
        print("Timer Started")
    }
    
    private func stopTimer() -> Void {
        print("Timer Stopped")
    }
    
    private func formatHMS(time: Int) -> Void {
        print("Formatting time as HMS")
    }
    
    private func formatMST(time: Int) -> Void {
        print("Formatting time as MST")
    }
    
    private func formatST(time: Int) -> Void {
        print("Formatting time as ST")
    }
    
    private func resetTimer() -> Void {
        print("Reseting timer")
    }
    
    private func updateLabelWithString (updateString: String) -> Void {
        self.TimeLabel.text = updateString
    }
    
    private func printFormattedTime(formatString : String, time : Int) -> String {
        return "Printing formatted time";
    }

}

