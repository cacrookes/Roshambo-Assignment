//
//  ViewController.swift
//  Roshambo Assignment
//
//  Created by Christopher Crookes on 2020-07-11.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ChooseGestureViewController: UIViewController {

    enum Hand: Int {
        case rock = 0, paper, scissors
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /// Randomly generates an iteger from 0 to 2 to represent the opponents move, and returns the associated hand.
    /// - Returns: the opponents hand, either rock, paper, or scissors
    func generateOpponentPlay() -> Hand {
        return Hand(rawValue: Int.random(in: 0...2))!
    }
    
    /// Checks if the player beat the opponent.
    /// - Parameters:
    ///   - playerMove: Hand type that represents the players move, either rock, paper, or scissors
    ///   - opponentMove: Hand type that represents the opponents move, either rock, paper, or scissors
    /// - Returns: Bool, indicating if the player won or not. Ties and losses are returned as false.
    func didPlayerWin(playerMove: Hand, opponentMove: Hand) -> Bool {
        switch playerMove {
        case .rock:
            return opponentMove == Hand.scissors ? true : false
        case .paper:
            return opponentMove == Hand.rock ? true : false
        case .scissors:
            return opponentMove == Hand.paper ? true : false
        }
    }
    
}

