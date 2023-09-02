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
    
    
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if sender.currentTitle == "20%" {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            zeroPctButton.isSelected = false
        } else if sender.currentTitle == "10%" {
            twentyPctButton.isSelected = false
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
        } else if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tenPctButton.isSelected = false
        }
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
    }
    
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if billTextField.text != nil {
            let bill = billTextField.text!
            let splitNum = splitNumberLabel.text
            let justBill = Double(bill)
            let split = Double(splitNum!)
            if zeroPctButton.isSelected == true {
                let billTotalZero = justBill! / split!
                let billCalculatedZero = String(format: "%.2f", billTotalZero)
                print(billCalculatedZero)
            }
            if tenPctButton.isSelected == true {
                let billTotalTen = (justBill! * 1.10 / split!)
                let billCalculatedTen = String(format: "%.2f", billTotalTen)
                print(billCalculatedTen)
            } else if twentyPctButton.isSelected == true {
                let billTotalTwenty = (justBill! * 1.20) / split!
                let billCalculatedTwenty = String(format: "%.2f", billTotalTwenty)
                print(billCalculatedTwenty)
            }
        }
    }
}


    
//        if splitNumberLabel.text != nil {
//            print(splitNumberLabel.text!)
//        }
        //        if twentyPctButton.isSelected == true {
        //            print(0.2)
        //        } else if tenPctButton.isSelected == true {
        //            print(0.1)
        //        } else {
        //            print(0.0)
        //        }
//        if billTextField.text != nil {
//            print(billTextField.text!)
//        }
//
        
        
        
        
        
        
        
        
        
    

