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
    
    var billOne: Double?
    
    var settings: String?
    
    var tip: String?
    
    
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
        let bill = billTextField.text!
        let splitNum = splitNumberLabel.text
        settings = splitNum
        let justBill = Double(bill)
        let split = Double(splitNum!)
        
        //        if billTextField.text != nil {
        //            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ResultsViewController") as? ResultsViewController
        //            self.navigationController?.pushViewController(vc!, animated: true)
        //
        //            self.present(vc!, animated: true, completion: nil)
        //        }
        //
        
        if zeroPctButton.isSelected == true && bill != "" {
            
            let billTotalZero = justBill! / split!
            let billCalculatedZero = String(format: "%.2f", billTotalZero)
            tip = "0%"
            billOne = Double(billCalculatedZero)
            //            billOne = Double(billCalculatedZero)
            //            print(billCalculatedZero)
            
        } else if tenPctButton.isSelected == true && bill != "" {
            let billTotalTen = (justBill! * 1.10 / split!)
            let billCalculatedTen = String(format: "%.2f", billTotalTen)
            tip = "10%"
            billOne = Double(billCalculatedTen)
            //            print(billCalculatedTen)
            
        } else if twentyPctButton.isSelected == true && bill != "" {
            
            let billTotalTwenty = (justBill! * 1.20) / split!
            let billCalculatedTwenty = String(format: "%.2f", billTotalTwenty)
            tip = "20%"
            billOne = Double(billCalculatedTwenty)
        
//            print(billCalculatedTwenty)
        }
        
        self.performSegue(withIdentifier: "GoToResults", sender: self) }
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.billOne = billOne
            destinationVC.settings = "Split between \(settings!) people, with \(tip ?? "no bill total or") percent tip."
            print(destinationVC.billOne ?? "empty value")
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
    
    
    
    
    
    
    
    
    
    
    
    
    

