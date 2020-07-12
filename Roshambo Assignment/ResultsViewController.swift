//
//  ResultsViewController.swift
//  Roshambo Assignment
//
//  Created by Christopher Crookes on 2020-07-11.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var resultImage: UIImage?
    var resultMessage: String?
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultImageView.image = resultImage
        resultLabel.text = resultMessage
    }
    
    
    @IBAction func playAgainClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
