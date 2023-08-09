//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var weightLabelChanged: UILabel!
    @IBOutlet weak var heightLabelChanged: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = Float(sender.value)
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        let roundNumber = formatter.string(from: NSNumber(value: currentValue))
        heightLabelChanged.text = String("\(roundNumber!)m")
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        weightLabelChanged.text = String("\(currentValue)Kg")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! resultViewController
            destinationVC.BmiValue = calculatorBrain.GetBmi()
            destinationVC.advice = calculatorBrain.GetAdvice()
            destinationVC.color = calculatorBrain.GetColor()
            
        }
    }
}

