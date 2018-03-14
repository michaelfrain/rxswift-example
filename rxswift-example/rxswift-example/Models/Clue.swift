//
//  Clue.swift
//  rxswift-example
//
//  Created by Frain, Michael F. on 3/13/18.
//  Copyright © 2018 frainm. All rights reserved.
//

import UIKit
enum ClueResult {
    case unselected
    case correct
    case incorrect
    case unanswered
}

class Clue {
    var value: UInt
    var result: ClueResult
    var index: UInt
    
    init(index: UInt, roundNumber: RoundNumber) {
        result = .unselected
        self.index = index
        
        switch roundNumber {
        case .jeopardy:
            switch index {
            case 0...5: value = 200
            case 6...11: value = 400
            case 12...17: value = 600
            case 18...23: value = 800
            case 24...29: value = 1000
            default: assert(false, "Cannot have a clue index greater than 29")
            }
            
        case .doubleJeopardy:
            switch index {
            case 0...5: value = 400
            case 6...11: value = 800
            case 12...17: value = 1200
            case 18...23: value = 1600
            case 24...29: value = 2000
            default: assert(false, "Cannot have a clue index greater than 29")
            }
            
        default:
            break
        }
    }
}
