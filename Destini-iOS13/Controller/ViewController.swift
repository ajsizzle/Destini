//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Alex Johnson on 11/06/2020.
//  Copyright © 2020 Xander Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyNumber = 0
    
    let stories = [
    Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
    Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
    Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    let story0 = "You see a fork in the road"
    let choice1 = "Take a left."
    let choice2 = "Take a right."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        if userChoice == stories[storyNumber].choice1 {
            storyNumber += 1
        } else if userChoice == stories[storyNumber].choice2 {
            storyNumber += 2
        }
        if storyNumber + 1 > stories.count {
            storyNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
    
}

