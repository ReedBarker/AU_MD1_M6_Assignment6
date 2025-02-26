//
//  NavViewController.swift
//  CurrencyConverter
//
//  Created by user268071 on 2/26/25.
//

import UIKit

class NavViewController: UIViewController {
    //from ViewController
    var usd: Int?
    var currency1Toggle: Bool = false
    var currency2Toggle: Bool = false
    var currency3Toggle: Bool = false
    var currency4Toggle: Bool = false
    
    //From NavViewController
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!

    @IBOutlet weak var currency1Amount: UILabel!
    @IBOutlet weak var currency2Amount: UILabel!
    @IBOutlet weak var currency3Amount: UILabel!
    @IBOutlet weak var currency4Amount: UILabel!
    
    var currency1CR = 1.43
    var currency2CR = 20.42
    var currency3CR = 7.26
    var currency4CR = 87.19
        
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "\(usd ?? 0) USD"
        
        if (currency1Toggle){
            currency1Label.text = "Canadian Dollar"
            currency1Amount.text = "\(currency1CR * Double((usd ?? 0)))"
        }
        else {
            currency1Label.text = ""
            currency1Amount.text = ""
        }
        if (currency2Toggle){
            currency2Label.text = "Mexican Peso"
            currency2Amount.text = "\(currency2CR * Double((usd ?? 0)))"
        } else {
            currency2Label.text = ""
            currency2Amount.text = ""}
        if (currency3Toggle){
            currency3Label.text = "Chinese Yuan"
            currency3Amount.text = "\(currency3CR * Double((usd ?? 0)))"
        } else {
            currency3Label.text = ""
            currency3Amount.text = ""}
        if (currency4Toggle){
            currency4Label.text = "Indian Rupee"
            currency4Amount.text = "\(currency4CR * Double((usd ?? 0)))"
        } else {
            currency4Label.text = ""
            currency4Amount.text = ""}
    }
    
}
