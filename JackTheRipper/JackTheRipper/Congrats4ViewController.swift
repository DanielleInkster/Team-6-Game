//
//  Congrats4ViewController.swift
//  JackTheRipper
//
//  Created by Danielle Inkster on 2019-12-04.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

class Congrats4ViewController: UIViewController {
    
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
       if let TenBellsViewController = segue.destination as? TenBellsViewController {
               TenBellsViewController.score = game?.score;
               TenBellsViewController.name = game?.title
           }
       }
    }


