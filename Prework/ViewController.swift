//
//  ViewController.swift
//  Prework
//
//  Created by Irene Zhan on 1/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountControl: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip_Seg(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func calculateTip_Slider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = Double(tipAmountControl.value)
        let tip = bill * tipPercentage
        let total = bill + tip
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

