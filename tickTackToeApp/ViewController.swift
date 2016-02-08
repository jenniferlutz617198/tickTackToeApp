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
    let players = "XO"
    let counter = 0
    let currentPlayer: Character!
    var myArray = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myArray = [topLeftLabel, topMiddleLabel, topRightLabel, middleleftLabel,centerLabel, middleRightLabel, lowerLeftLabel, lowerMiddleLabel, lowerRightLabel]
    }
    
    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
        let selectedPoint = sender.locationInView(self.view)
        print(selectedPoint)
        for label in myArray
        {
            if CGRectContainsPoint(topLeftLabel.frame, selectedPoint)
            {
                topLeftLabel.text = String(currentPlayer)
            }
    }
    
    




}