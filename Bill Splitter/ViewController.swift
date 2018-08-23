//
//  ViewController.swift
//  Bill Splitter
//
//  Created by Pulkit Aggarwal on 23/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var dinersTextField: UITextField!

    @IBOutlet weak var costTextField: UITextField!
    
    @IBAction func dismissKeyBoard(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculate(_ sender: Any) {
        if let dinerStr = dinersTextField.text,
            let costStr = costTextField.text,
            let diner = Double(dinerStr),
            let total = Double(costStr)
        {
//            resultLabel.text = "The total cost of food is \(total)\n\nNumber of diners: \(Int(diner)) \n\nEach Diner pays: \(total/diner)"
            }
    }
}

