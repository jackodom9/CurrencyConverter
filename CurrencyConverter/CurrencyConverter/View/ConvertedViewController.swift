//
//  ConvertedViewController.swift
//  CurrencyConverter
//
//  Created by Jack Odom on 6/19/23.
//

import UIKit

class ConvertedViewController: UIViewController {

    @IBOutlet weak var amountUSD: UILabel!
    
    @IBOutlet weak var amountYuan: UILabel!
    
    @IBOutlet weak var amountYen: UILabel!
    
    @IBOutlet weak var amountPesos: UILabel!
    
    @IBOutlet weak var amountEuros: UILabel!
    
    var converterLogic : ConverterLogic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountUSD.text = "$ \(String(describing: converterLogic.amount))"
        if converterLogic.yuan{
            amountYuan.text = String(converterLogic.yuanAmount)
        }
        else {
            amountYuan.text = "--------"
        }
        if converterLogic.peso {
            amountPesos.text = String(converterLogic.pesoAmount)
        }
        else {
            amountPesos.text = "--------"
        }
        if converterLogic.euro {
            amountEuros.text = String(converterLogic.euroAmount)
        }
        else {
            amountEuros.text = "--------"
        }
        if converterLogic.yen {
            amountYen.text = String(converterLogic.yenAmount)
        }
        else {
            amountYen.text = "--------"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
