//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Funnmedia 2 on 07/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var Bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let BmiValue = (weight / pow(height, 2))

        if BmiValue < 18.5{
            Bmi = BMI(value: BmiValue, advice: "Eat more pies", color: UIColor.systemBlue)
            
        }
        else if BmiValue < 25{
            Bmi = BMI(value: BmiValue, advice: "Fit as a Fiddle", color: UIColor.systemGreen)
        }
        else{
            Bmi = BMI(value: BmiValue, advice: "Eat less pies", color: UIColor.systemPink )
        }
    }
    
    mutating func GetBmi() -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 1
        let getDecimalPlace = formatter.string(from: NSNumber(value: Bmi?.value ?? 0.0))
        return getDecimalPlace!
    }
    
    func GetAdvice() -> String{
        return Bmi?.advice ?? "no advise"
    }
    
    func GetColor() -> UIColor{
        return Bmi?.color ?? UIColor.blue
    }
}
