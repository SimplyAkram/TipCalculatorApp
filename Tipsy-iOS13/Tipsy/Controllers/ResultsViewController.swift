//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Akram Ali on 2/21/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    var billOne: Double?
    var settings: String?
    var tip: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(billOne ?? 0.0)
        settingsLabel.text = settings ?? ""
        
    }
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
}
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


