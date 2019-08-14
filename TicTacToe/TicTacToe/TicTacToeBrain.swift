//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
import UIKit

enum Space {
   
    case playerX
    case playerO
    case empty
    
}


class TicTacToeBrain {
  
    var gameState = [Space.empty, Space.empty, Space.empty, Space.empty, Space.empty, Space.empty, Space.empty, Space.empty, Space.empty]
    
    
    let winningCombos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                        [0, 3, 6], [1, 4, 7], [2, 5, 8],
                        [0, 4, 8], [2, 4, 6]]
    
    
        func checkingWinngCombo () -> Bool {
            for combination in winningCombos{
//                print(gameState)
//                print(combination[0])
//
//                print(combination[1])
                if gameState[combination[0]] != Space.empty && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]{
                    return true
                }
            }
            return false
    }
    
   
}
