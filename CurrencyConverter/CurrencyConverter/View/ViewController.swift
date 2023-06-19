//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Jack Odom on 6/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var amountNumber: UITextField!
    
    var converterLogic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yuanChanger(_ sender: UISwitch) {
        if sender.isOn {
            converterLogic.setYuanChanger(true)
        }
        else {
            converterLogic.setYuanChanger(false)
        }
    }
    
    @IBAction func yenChanger(_ sender: UISwitch) {
        if sender.isOn {
            converterLogic.setYenChanger(true)
        }
        else {
            converterLogic.setYenChanger(false)
        }
    }
    
    @IBAction func pesoChanger(_ sender: UISwitch) {
        if sender.isOn {
            converterLogic.setPesoChanger(true)
        }
        else {
            converterLogic.setPesoChanger(false)
        }
    }
    
    @IBAction func euroChanger(_ sender: UISwitch) {
        if sender.isOn {
            converterLogic.setEuroChanger(true)
        }
        else {
            converterLogic.setEuroChanger(false)
        }
    }
    
    @IBAction func convert(_ sender: UIButton) {
        if let amount = Int(amountNumber.text!) {
            converterLogic.converter(amount)
            self.performSegue(withIdentifier: "toConverted", sender: self)
        }
        else {
            amountLabel.text = "Please enter an integer:"
            amountLabel.textColor = UIColor.red
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverted" {
            let navigation = segue.destination as! ConvertedViewController
            navigation.converterLogic = converterLogic
            
        }
    }
}

