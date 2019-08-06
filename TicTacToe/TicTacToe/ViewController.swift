//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1 // cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    //gameState represents the places on the board, not
  
    @IBAction func buttonXes(_ sender: UIButton) {
        
        if gameState[sender.tag-1] == 0{
            if activePlayer == 1{
                sender.setImage(UIImage(named: "Player X"), for: UIControl.State())
                activePlayer = 2
            }
            else{
                sender.setImage(UIImage(named: "Player O"), for: UIControl.State())
                activePlayer = 1
            }
        }
        
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

