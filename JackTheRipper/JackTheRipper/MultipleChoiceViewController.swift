//
//  MultipleChoiceViewController.swift
//  JackTheRipper
//
//  Created by Danielle Inkster on 2019-12-02.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

class MultipleChoiceViewController: UIViewController {
    let game = Game()
    let correctAnswer = 0
    
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        nextButton.isHidden = true
        titleLabel.text = "\(game.title)"
        scoreLable.text = "Score: \(game.score)"
        answerLabel.isHidden = true
        
    }

    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.tag == correctAnswer {
            title = "Correct"
            game.rightAnswer()
            scoreLable.text = "Score: \(game.score)"
            titleLabel.text = "\(game.title)"
            answerLabel.text = "Correct!"
            answerLabel.isHidden = false
            nextButton.isHidden = false
        } else {
            title = "Incorrect"
            answerLabel.text = "Incorrect."
            answerLabel.isHidden = false
            game.wrongAnswer()
        }
    }
    
    
}
