//
//  ViewController.swift
//  Podzielnosc
//
//  Created by Kacper Kuźniak on 21/01/2018.
//  Copyright © 2018 Kacper Kuźniak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var dividesTextView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dividesTextView.text = ""
    }

    @IBAction func buttonClicked(_ sender: Any) {
        dividesTextView.text = ""
        getDivides()
        self.view.endEditing(true)
    }
    
    func getDivides() {
        if let number = Int(textField.text!) {
            if number > 0 {
                for x in 1...number {
                    if ( number % x == 0 ) {
                        dividesTextView.text = dividesTextView.text! + " \(x)\n"
                    }
                }
            } else if number < 0 {
                for x in number...(-1) {
                    if ( number % x == 0 ) {
                        dividesTextView.text = dividesTextView.text! + " \(x)\n"
                    }
                }
                
            } else {
                dividesTextView.text = "Zła wartość została podana!"
            }
        } else {
            dividesTextView.text = "Zła wartość została podana!"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

