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
    
    enum GameResults {
        case win, lose, tie
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
    
    /// Returns the results of the game.
    /// - Parameters:
    ///   - playerMove: Hand type that represents the players move, either rock, paper, or scissors
    ///   - opponentMove: Hand type that represents the opponents move, either rock, paper, or scissors
    /// - Returns: the results of the game, either win, lose, or tie.
    func getGameResults(playerMove: Hand, opponentMove: Hand) -> GameResults {
        switch playerMove {
        case .rock:
            switch opponentMove{
            case .rock: return GameResults.tie
            case .paper: return GameResults.lose
            case .scissors: return GameResults.win
            }
        case .paper:
            switch opponentMove{
            case .rock: return GameResults.win
            case .paper: return GameResults.tie
            case .scissors: return GameResults.lose
            }
        case .scissors:
            switch opponentMove{
            case .rock: return GameResults.lose
            case .paper: return GameResults.win
            case .scissors: return GameResults.tie
            }
        }
    }
        
}

