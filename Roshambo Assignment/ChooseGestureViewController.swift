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

    // MARK: - Button Actions
    
    @IBAction func rockButtonClick(_ sender: Any) {
        let controller: ResultsViewController
        
        controller = storyboard?.instantiateViewController(identifier: "ResultsViewController") as! ResultsViewController
        
        (controller.resultMessage, controller.resultImage) = getGameResults(playerMove: .rock, opponentMove: generateOpponentPlay())
        
        present(controller, animated: true, completion: nil)
    }
    
    // MARK: - Game Logic
    

    /// Randomly generates an iteger from 0 to 2 to represent the opponents move, and returns the associated hand.
    /// - Returns: the opponents hand, either rock, paper, or scissors
    func generateOpponentPlay() -> Hand {
        return Hand(rawValue: Int.random(in: 0...2))!
    }
    
    /// Returns the results of the game.
    /// - Parameters:
    ///   - playerMove: Hand type that represents the players move, either rock, paper, or scissors
    ///   - opponentMove: Hand type that represents the opponents move, either rock, paper, or scissors
    /// - Returns: a String, UIImage tuple that represent the results of the game.
    func getGameResults(playerMove: Hand, opponentMove: Hand) -> (String, UIImage) {
        var resultImage: UIImage
        var resultString: String
        switch playerMove {
        case .rock:
            switch opponentMove{
            case .rock:
                resultImage = #imageLiteral(resourceName: "itsATie")
                resultString = "It's a tie! You both picked rock."
            case .paper:
                resultImage = #imageLiteral(resourceName: "PaperCoversRock")
                resultString = "You lose! Paper covers rock."
            case .scissors:
                resultImage = #imageLiteral(resourceName: "RockCrushesScissors")
                resultString = "You win! Rock crushes scissors."
            }
        case .paper:
            switch opponentMove{
            case .rock:
                resultImage = #imageLiteral(resourceName: "PaperCoversRock")
                resultString = "You win! Paper covers rock"
            case .paper:
                resultImage = #imageLiteral(resourceName: "itsATie")
                resultString = "It's a tie! You both picked paper."
            case .scissors:
                resultImage = #imageLiteral(resourceName: "ScissorsCutPaper")
                resultString = "You lose! Scissors cuts paper."
            }
        case .scissors:
            switch opponentMove{
            case .rock:
                resultImage = #imageLiteral(resourceName: "RockCrushesScissors")
                resultString = "You lose! Rock crushes scissors."
            case .paper:
                resultImage = #imageLiteral(resourceName: "ScissorsCutPaper")
                resultString = "You win! Scissors cuts paper."
            case .scissors:
                resultImage = #imageLiteral(resourceName: "itsATie")
                resultString = "It's a tie! You both picked scissors."
            }
        }
        return (resultString, resultImage)
    }
        
}

