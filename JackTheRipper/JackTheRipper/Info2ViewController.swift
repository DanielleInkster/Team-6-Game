//
//  Info2ViewController.swift
//  JackTheRipper
//
//  Created by Heli Sivunen on 03/12/2019.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

class Info2ViewController: UIViewController {
    
    var score: Int? = nil
    @IBOutlet weak var scoreLabel: UILabel!
    // button here
override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score ?? 0)"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let RiddleViewController = segue.destination as? RiddleViewController {
//            RiddleViewController.score = score
        }
    }
}
