//
//  resultViewController.swift
//  BMI Calculator
//
//  Created by Funnmedia 2 on 06/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    var BmiValue : String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bgColor: UIImageView!
    @IBOutlet weak var BmiLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BmiLabel.text = BmiValue
        adviceLabel.text = advice
        bgColor.backgroundColor = color
        
    }
    
    @IBAction func recalculationButton(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


