//
//  ViewController.swift
//  Roshambo Assignment
//
//  Created by Christopher Crookes on 2020-07-11.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ChooseGestureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /// Randomly generates an iteger from 0 to 2 to represent the opponents move
    /// - Returns: An Int with a value of either 0, 1, or 2.
    func generateOpponentPlay() -> Int {
        return Int.random(in: 0...2)
    }
    
}

