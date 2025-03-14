//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Ádám Marton on 02.03.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        adviceLabel.text = advice
        backgroundImage.backgroundColor = color
    }
    
    @IBAction func recalcPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
