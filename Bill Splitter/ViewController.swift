//
//  ViewController.swift
//  BillSplitter
//
//  Created by Appkoder on 17/09/2016.
//  Copyright © 2016 Appkoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dinersTextfield: UITextField!
    
    @IBOutlet weak var totalCostTextfield: UITextField!
    
    var resultText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func dismissKeyboard(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    /*
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        print("code ran")
        if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text, let diner = Double(dinerStr), let total = Double(totalStr)
        {
            let formattedTotal = String(format: "%.2f", total/diner)
            let formattedCost = String(format: "%.2f", total)
            
            resultText = "The total cost of food is $\(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $\(formattedTotal)"
            
            return true
            
        }
        
        return false
        
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier
        {
            if identifier == "cheap"
            {
                let navController = segue.destination as! UINavigationController
                let destinationVC = navController.topViewController as! ResultViewController
                
                destinationVC.finalText = resultText

            }
//            else
//            {
//                let destination = segue.destination as! CostlyViewController
//                destination.finalTextCostly = resultText
//                destination.titleCostly = "Your dinner was expensive"
//            }
        }
        
    }
    
    
    @IBAction func calculate(_ sender: AnyObject) {
        
        if let dinerStr = dinersTextfield.text, let totalStr = totalCostTextfield.text, let diner = Double(dinerStr), let total = Double(totalStr)
        {
            let formattedTotal = String(format: "%.2f", total/diner)
            let formattedCost = String(format: "%.2f", total)
            
            resultText = "The total cost of food is $\(formattedCost)\n\nNumber of diners: \(Int(diner))\n\nEach diner pays: $\(formattedTotal)"
            
            if total > 100
            {
                performSegue(withIdentifier: "costly", sender: self)
            }
            else
            {
                performSegue(withIdentifier: "cheap", sender: self)
            }
            
        }
        
    }
    
    @IBAction func helpClicked(_ sender: AnyObject) {
        
        if let helpVC = storyboard?.instantiateViewController(withIdentifier: "nav")
        {
            present(helpVC, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func dismissVC(segue: UIStoryboardSegue)
    {
        
    }
}

