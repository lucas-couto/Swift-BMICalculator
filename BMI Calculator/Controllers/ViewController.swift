  //
  //  ViewController.swift
  //  BMI Calculator
  //
  //  Created by Angela Yu on 21/08/2019.
  //  Copyright © 2019 Angela Yu. All rights reserved.
  //

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var weightText: UILabel!
  @IBOutlet weak var heightText: UILabel!
  
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  var bmiValue = "0.0"
  var calculatorBrain = CalculatorBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
  }
  
  @IBAction func heightChanged(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightText.text = "\(height)m"
  }
  
  @IBAction func weightChanged(_ sender: UISlider) {
    let weight = String(format: "%.0f", sender.value)
    weightText.text = "\(weight)Kg"
  }
  
  @IBAction func calculateBMI(_ sender: Any) {
    
    let heightValue = heightSlider.value
    let weigthValue = weightSlider.value
    
    calculatorBrain.calculateBMI(heightValue, weigthValue)
    
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculatorBrain.getBMIValue()
      destinationVC.advice = calculatorBrain.getAdvice()
      destinationVC.color = calculatorBrain.getColor()
    }
  }
  
}

