//
//  ViewController.swift
//  PreWork
//
//  Created by Sayf Tanbir on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTxtField: UITextField!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from user input
        let bill = Double(billAmountTxtField.text!) ?? 0
        
        // Get total tip by multiplying tip * Percentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLbl.text = String(format: "$%.2f", tip)
        //update Total amount
        totalAmountLbl.text = String(format: "$%.2f", total)
    }
    
}

