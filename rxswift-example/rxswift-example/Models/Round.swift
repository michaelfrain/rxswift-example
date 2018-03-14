//
//  Round.swift
//  rxswift-example
//
//  Created by Frain, Michael F. on 3/13/18.
//  Copyright © 2018 frainm. All rights reserved.
//

import UIKit
import RxSwift

enum RoundNumber: UInt {
    case jeopardy = 1, doubleJeopardy, finalJeopardy
}

class Round {
    let clues: Variable<[Clue]> = Variable([])
    
    func createRound(round: RoundNumber) {
        var n = 0
        while n < 30 {
            let clue = Clue(, index: n)
        }
    }
}
