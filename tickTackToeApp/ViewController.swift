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
    
    let letters = "XO"
    var counter = 0
    var currentLetter: Character!
    var myArray = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentLetter()
        myArray = [topLeftLabel, topMiddleLabel, topRightLabel, middleleftLabel,centerLabel, middleRightLabel, lowerLeftLabel, lowerMiddleLabel, lowerRightLabel]
    }
    
    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
        let selectedPoint = sender.locationInView(self.view)
        print(selectedPoint)
        for label in myArray
        {
            if CGRectContainsPoint(topLeftLabel.frame, selectedPoint)
            {
                topLeftLabel.text = String(currentLetter)
            }
   
        }
        
        
        
        counter++
        if counter == 26
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
    
    func getCurrentPlayer(){
        let myRange = Range<String.Index>(start: letters.startIndex.advancedBy(counter), end: letters.startIndex.advancedBy(counter+1))
            currentPlayerLabel.text = letters.substringWithRange(myRange)
            currentLetter = Character(letters.substringWithRange(myRange))

    }
    
        
        
        
        
        
        
        
        
    
    




}