//
//  FinishViewController.swift
//  BillSplitter
//
//  Created by Appkoder on 18/09/2016.
//  Copyright © 2016 Appkoder. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finishClicked(_ sender: AnyObject) {
        
        if let navController = navigationController
        {
            navController.popToRootViewController(animated: true)
        }
    }


}
