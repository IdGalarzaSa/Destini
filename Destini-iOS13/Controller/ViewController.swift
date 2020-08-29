//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var storyLabel: UILabel!
  @IBOutlet var choice1Button: UIButton!
  @IBOutlet var choice2Button: UIButton!
  
  var storyBrain = StoryBrain()
  var story:Story!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUi()
  }

  @IBAction func chooiceMade(_ sender: UIButton) {
    
    if sender.currentTitle == story.choice1 {
      storyBrain.setNextStory(story.choice1Destination)
    } else {
      storyBrain.setNextStory(story.choice2Destination)
    }
    
    updateUi()
  }
  
  func updateUi(){
    story = storyBrain.getCurrentStory()
    storyLabel.text = story.title
    choice1Button.setTitle(story.choice1, for: .normal)
    choice2Button.setTitle(story.choice2, for: .normal)
  }
  
}

