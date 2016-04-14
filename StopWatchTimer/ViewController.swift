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
//    @IBOutlet weak var StartStopSegment: UISegmentedControl!
    @IBOutlet weak var StartStopSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startStopSegmentIndexChanged(sender: AnyObject) {
        switch StartStopSegment.selectedSegmentIndex
                {
                case 0:
                    println("timer started")
                    break;
                case 1:
                    println("timer stopped")
                    break;
                default:
                    println("timer stopped")
                    break;
                }

    }
    
    
    
//    @IBAction func StartStopSegmentIndexChanged(sender: UISegmentedControl) {
//        switch StartStopSegment.selectedSegmentIndex
//        {
//        case 0:
//            print("timer started")
//            break;
//        case 1:
//            print("timer stopped")
//            break;
//        default:
//            print("timer stopped")
//            break;
//        }
//    }
    
    @IBAction func FormatSegmentIndexChanged(sender: UISegmentedControl) {
        switch FormatSegment.selectedSegmentIndex
        {
        case 0:
            println("h.m.s")
        case 1:
            println("m.s.t")
        case 2:
            println("s.t")
        default:
            println("h.m.s")
        }
    }
    
    @IBAction func ResetTimeButton(sender: UIButton) {
        self.resetTimer()
    }
    
    @IBAction func viewSavedButtonPressed(sender: AnyObject) {
        println("Viewing Saved")
    }
    
    @IBAction func saveTimeButtonPressed(sender: AnyObject) {
        println("Saving time")
    }
    
    func startTimer() -> Void {
        println("Timer Started")
    }
    
    func stopTimer() -> Void {
        println("Timer Stopped")
    }
    
    func formatHMS(time: Int) -> Void {
        println("Formatting time as HMS")
    }
    
    func formatMST(time: Int) -> Void {
        println("Formatting time as MST")
    }
    
    func formatST(time: Int) -> Void {
        println("Formatting time as ST")
    }
    
    func resetTimer() -> Void {
        println("Reseting timer")
    }
    
    func updateLabelWithString (updateString: String) -> Void {
        self.TimeLabel.text = updateString
    }
    
    func printFormattedTime(formatString : String, time : Int) -> String {
        return "Printing formatted time";
    }

}

