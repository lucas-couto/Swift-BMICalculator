  //
  //  CalculatorBrain.swift
  //  BMI Calculator
  //
  //  Created by Lucas Couto on 18/07/23.
  //  Copyright © 2023 Angela Yu. All rights reserved.
  //

import UIKit

struct CalculatorBrain{
  
  var bmi: BMI?
  
  mutating func calculateBMI(_ height: Float, _ weight: Float){
    let bmiValue = weight / pow(height, 2)
    
    if bmiValue < 18.5{
      bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
    }else if bmiValue < 24.9{
      bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
    }else{
      bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
    }
  }
  
  func getBMIValue() -> String{
    return String(format: "%.1f", bmi?.value ?? 0.0)
  }
  
  func getAdvice() -> String{
    return bmi?.advice ?? ""
  }
  
  func getColor() -> UIColor{
    return bmi?.color ?? UIColor.green
  }
  
  
}
