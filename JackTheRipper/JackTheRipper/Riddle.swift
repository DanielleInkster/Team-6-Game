//
//  Riddle.swift
//  JackTheRipper
//
//  Created by Heli Sivunen on 28/11/2019.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation

class Riddle {
    var correctAnswer = "leather apron"
    
    func isSolved(answer: String) -> String {
        if answer == correctAnswer {
            return "new location"
        } else {
            return "try again"
        }
    }
}
