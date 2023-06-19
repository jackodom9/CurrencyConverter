//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by Jack Odom on 6/19/23.
//

import Foundation

struct ConverterLogic {
    
    var yuan = true
    
    var yen = true
    
    var peso = true
    
    var euro = true
    
    var amount : Int = 0
    
    var yuanAmount : Double = 0.0
    
    var yenAmount : Double = 0.0
    
    var pesoAmount : Double = 0.0
    
    var euroAmount : Double = 0.0
    
    var yuanConversion = 7.16
    
    var yenConversion = 141.92
    
    var pesoConversion = 17.09
    
    var euroConversion = 0.92
    
    mutating func setYuanChanger(_ switchValue: Bool) {
        if switchValue {
            yuan = true
        }
        else {
            yuan = false
        }
    }
    
    mutating func setYenChanger(_ switchValue: Bool) {
        if switchValue {
            yen = true
        }
        else {
            yen = false
        }
    }
    
    mutating func setPesoChanger(_ switchValue: Bool) {
        if switchValue {
            peso = true
        }
        else {
            peso = false
        }
    }
    
    mutating func setEuroChanger(_ switchValue: Bool) {
        if switchValue {
            euro = true
        }
        else {
            euro = false
        }
    }
    
    mutating func converter(_ amount: Int) {
        self.amount = amount
        yuanAmount = round(Double(amount) * yuanConversion * 100) / 100.0
        yenAmount = round(Double(amount) * yenConversion * 100) / 100.0
        pesoAmount = round(Double(amount) * pesoConversion * 100) / 100.0
        euroAmount = round(Double(amount) * euroConversion * 100) / 100.0
    }
}
