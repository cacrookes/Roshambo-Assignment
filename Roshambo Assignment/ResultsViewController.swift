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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
