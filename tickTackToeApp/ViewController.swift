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
    
    let players = "XY"
    var counter = 0
    var currentPlayer: Character
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func changePlayersWhenTapped(sender: UITapGestureRecognizer) {
    }

    
}



