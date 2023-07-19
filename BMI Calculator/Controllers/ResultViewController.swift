  //
  //  ResultViewController.swift
  //  BMI Calculator
  //
  //  Created by Lucas Couto on 18/07/23.
  //  Copyright © 2023 Angela Yu. All rights reserved.
  //

import UIKit

class ResultViewController: UIViewController {
  
  var bmiValue: String?
  var advice: String?
  var color: UIColor?
  
  @IBOutlet weak var resultText: UILabel!
  @IBOutlet weak var adviceText: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    resultText.text = bmiValue
    adviceText.text = advice
    view.backgroundColor = color
  }
  
  @IBAction func recalculateBMI(_ sender: Any) {
    self.dismiss(animated: true)
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
