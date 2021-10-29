//
//  ViewController.swift
//  calculator
//
//  Created by User on 10/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var numberOne: Int? = nil

    @IBAction func fiveClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "5"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "5"
        }
    }
    @IBAction func zeroClick(_ sender: Any) {
        if resultLabel.text != "0" {
            resultLabel.text = (resultLabel.text ?? String()) + "0"
        }
    }
    
    @IBAction func plusClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Int(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
    }
    
    @IBAction func resultClick(_ sender: Any) {
        resultLabel.text = String((numberOne ?? 0) + Int(resultLabel.text ?? "0")!)
        
        numberOne = nil
    }
}

