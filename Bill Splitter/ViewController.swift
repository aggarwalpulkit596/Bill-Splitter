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
    var resulttext = ""
    @IBOutlet weak var costTextField: UITextField!
    
    @IBAction func dismissKeyBoard(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculate(_ sender: Any) {
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destinationVC = segue.destination as! ResultViewController
        destinationVC.finalText = resulttext

}
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let dinerStr = dinersTextField.text,
            let costStr = costTextField.text,
            let diner = Double(dinerStr),
            let total = Double(costStr)
        {
         resulttext = "The total cost of food is \(total)\n\nNumber of diners: \(Int(diner)) \n\nEach Diner pays: \(total/diner)"
            return true
        }
        return false
    }
    @IBAction func dismissVC(segue :UIStoryboardSegue){
        //to dismiss VC
    }
}

