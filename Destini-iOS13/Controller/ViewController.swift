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

        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}

