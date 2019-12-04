//
//  Info5ViewController.swift
//  JackTheRipper
//
//  Created by Danielle Inkster on 2019-12-04.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

class Info5ViewController: UIViewController {
    var score: Int? = nil
    var name: String? = nil
    var game : Game?
   
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            game = Game()
            game?.title = name ?? "Error"
            game?.score = score ?? 0
            scoreLabel.text = "Score: \(game?.score ?? 0)"
            titleLabel.text = "\(game?.title ?? "Error")"
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ScrambleViewController = segue.destination as? ScrambleViewController {
                ScrambleViewController.score = game?.score;
                ScrambleViewController.name = game?.title
            }
        }
    }

