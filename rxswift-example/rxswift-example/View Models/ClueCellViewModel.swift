//
//  ClueCellViewModel.swift
//  rxswift-example
//
//  Created by Frain, Michael F. on 3/13/18.
//  Copyright © 2018 frainm. All rights reserved.
//

import UIKit

class ClueCellViewModel {
    var clueValue: UInt
    var clueSelected: ClueResult
    
    init(clue: Clue) {
        clueValue = clue.value
        clueSelected = .unselected
    }
}
