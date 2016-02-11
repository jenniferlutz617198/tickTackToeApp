//
//  ViewController.swift
//  tickTackToeApp
//
//  Created by student3 on 12/17/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentPlayerLabel: UILabel!
    
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var topMiddleLabel: UILabel!
    @IBOutlet weak var topRightLabel: UILabel!
    @IBOutlet weak var middleleftLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var middleRightLabel: UILabel!
    @IBOutlet weak var lowerLeftLabel: UILabel!
    @IBOutlet weak var lowerMiddleLabel: UILabel!
    @IBOutlet weak var lowerRightLabel: UILabel!
    
    let letters = "OX"
    var counter = 0
    var currentLetter: Character!
    var myArray = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentLetter()
        myArray = [topLeftLabel, topMiddleLabel, topRightLabel, middleleftLabel,centerLabel, middleRightLabel, lowerLeftLabel, lowerMiddleLabel, lowerRightLabel]
    }
    
    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
        currentPlayerLabel.text = "XO"
        let selectedPoint = sender.locationInView(self.view)
        print(selectedPoint)
        for label in myArray
        {
            if CGRectContainsPoint(label.frame, selectedPoint)
            {
                label.text = String(currentLetter)
            }
   
        }
        counter++
        if counter == 2
        {
            reset()
        }
        getCurrentLetter()

    }
    
    func getCurrentLetter()
    {
        let myRange = Range<String.Index>(start: letters.startIndex.advancedBy(counter), end: letters.startIndex.advancedBy(counter+1))
        currentPlayerLabel.text = letters.substringWithRange(myRange)
        currentLetter = Character (letters.substringWithRange(myRange))
    }
    
    func checkForWinner()
        
    {
        
        if topLeftLabel.text == topMiddleLabel.text && topRightLabel.text == middleleftLabel.text && lowerLeftLabel.text != ""
            
        {
            
            presentWinningAlert("\(topRightLabel.text!)")
            
        }
            
        else if middleleftLabel.text == centerLabel.text && centerLabel.text == middleRightLabel.text && middleRightLabel.text != ""
            
        {
            
            presentWinningAlert("\(middleRightLabel.text!)")
            
        }
            
        else if lowerLeftLabel.text == lowerMiddleLabel.text && lowerMiddleLabel.text == lowerRightLabel.text && lowerRightLabel.text != ""
            
        {
            
            presentWinningAlert("\(lowerRightLabel.text!)")
            
        }
            
        else if topLeftLabel.text == middleleftLabel.text && middleleftLabel == lowerLeftLabel.text && lowerLeftLabel.text != ""
            
        {
            
            presentWinningAlert("\(lowerLeftLabel.text!)")
            
        }
            
        else if topMiddleLabel.text == centerLabel.text && centerLabel.text == lowerMiddleLabel.text && lowerMiddleLabel.text != ""
            
        {
            
            presentWinningAlert("\(lowerMiddleLabel.text!)")
            
        }
            
        else if topRightLabel.text == middleRightLabel.text && middleRightLabel.text == lowerRightLabel.text && lowerRightLabel.text != ""
            
        {
            
            presentWinningAlert("\(lowerRightLabel.text!)")
            
        }
            
        else if topLeftLabel.text == centerLabel.text && centerLabel.text == lowerRightLabel.text && lowerRightLabel.text != ""
            
        {
            
            presentWinningAlert("\(lowerRightLabel.text!)")
            
        }
            
        else if label3.text == label5.text && label5.text == label7.text && label7.text != ""
            
        {
            
            presentWinningAlert("\(label7.text!)")
            
        }
        
        
        
        if moveCounter == 9
            
        {
            
            presentWinningAlert("No One")
            
        }

    func reset()
    {
        counter = 0
        let alert = UIAlertController(title: "resetting Counter", message: "Press OK to reset", preferredStyle: UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: clearLabels)
        alert.addAction(okAction)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func clearLabels(action: UIAlertAction)
    {
        topLeftLabel.text = ""
        topMiddleLabel.text = ""
        topRightLabel.text = ""
        middleleftLabel.text = ""
        centerLabel.text = ""
        middleRightLabel.text = ""
        lowerLeftLabel.text = ""
        lowerMiddleLabel.text = ""
        lowerRightLabel.text = ""
    }
    
    
    
        
        
        
        
        
        
        
        
    
    




}