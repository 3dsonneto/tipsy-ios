//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var value = 0.0
    var stepperValue = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        if sender.currentTitle == "20%" {
            value = 0.2
        } else if sender.currentTitle == "10%"{
            value = 0.1
        } else {
            value = 0.0
        }
        
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperValue = sender.value
        splitNumberLabel.text = String(format: "%.0f",stepperValue)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(value)
        print(stepperValue)
    }
    
    
}

