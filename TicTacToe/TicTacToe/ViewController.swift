//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var brainy = TicTacToeBrain()
    var activePlayer = Space.playerX
    
    @IBOutlet weak var playerMessage: UILabel!
    
    //gameState represents the places on the board

  //
    @IBAction func buttonXes(_ sender: UIButton) {
        
        if brainy.gameState[sender.tag - 1] == .empty{
        brainy.gameState[sender.tag-1] = activePlayer
            
            if activePlayer == Space.playerX{
                sender.setImage(UIImage(named: "Player X"), for: UIControl.State())
                activePlayer = Space.playerO
            }
            else{
                sender.setImage(UIImage(named: "Player O"), for: UIControl.State())
                activePlayer = Space.playerX
            }
        }
        if brainy.checkingWinngCombo()  {
            playerMessage.text = "PLAYER WINS!"
            sender.isEnabled = false
        }
        
        
//        for combination in winningCombos{
//            brainy.checkingWinngCombo()
//            print(gameState)
//            print(combination[0])
//            
//            print(combination[1])
//            if gameState[combination[0]] != Space.empty && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]{
//                
//                
//            }
//        }
    
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

