//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ádám Marton on 02.03.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: Float(bmiValue), advice: "Underweight - eat some more", color: UIColor.blue)
        } else if bmiValue < 25 {
            bmi = BMI(value: Float(bmiValue), advice: "Normal weight - get some muscle", color: UIColor.green)
        } else {
            bmi = BMI(value: Float(bmiValue), advice: "Overweight - go to the gym", color: UIColor.red)
        }
    }
    
    func getBmi() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
}
