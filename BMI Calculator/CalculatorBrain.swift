//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ádám Marton on 02.03.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func bmiString() -> String {
        return String(format: "%.1f", bmi)
    }
    
}
