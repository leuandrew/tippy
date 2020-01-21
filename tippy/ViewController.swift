//
//  ViewController.swift
//  tippy
//
//  Created by Andrew Leu on 1/20/20.
//  Copyright © 2020 Andrew Leu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and Total
        let tipPercentages = [0.15 , 0.18 , 0.2]

        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

