//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user268071 on 2/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputUSD: UITextField!
    @IBOutlet weak var currency1Switch: UISwitch!
    @IBOutlet weak var currency2Switch: UISwitch!
    @IBOutlet weak var currency3Switch: UISwitch!
    @IBOutlet weak var currency4Switch: UISwitch!
    @IBOutlet weak var errorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
    }

    @IBAction func convertUSD(_ sender: UIButton) {
        if checkForInt(inputUSD) {
            errorLabel.text = ""
            self.performSegue(withIdentifier: "convertUSD", sender: self)
        } else {
            errorLabel.text = "Please enter a valid integer."
        }
    }
    
    @IBAction func checkIntValue(_ sender: UITextField) {
        if !checkForInt(inputUSD) {
            errorLabel.text = "Enter a valid integer."
        } else {
            errorLabel.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "convertUSD" && checkForInt(inputUSD) {
            let converter = segue.destination as! NavViewController
            
            if let text = inputUSD.text, let intValue = Int(text) {
                converter.usd = intValue
            } else {
                converter.usd = 0
            }
            
            converter.currency1Toggle = currency1Switch.isOn
            converter.currency2Toggle = currency2Switch.isOn
            converter.currency3Toggle = currency3Switch.isOn
            converter.currency4Toggle = currency4Switch.isOn
        }
    }
    
    func checkForInt(_ inValue: UITextField) -> Bool {
        if let text = inValue.text, Int(text) != nil {
            return true
        }
        return false
    }
}

