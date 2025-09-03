//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Axel Woermann


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.tag
        storyBrain.processChoice(userChoice)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        let choices = storyBrain.getChoices()
        choice1Button.setTitle(choices[0], for: .normal)
        choice2Button.setTitle(choices[1], for: .normal)
    }
    
}

