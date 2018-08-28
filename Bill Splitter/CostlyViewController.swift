//
//  CostlyViewController.swift
//  BillSplitter
//
//  Created by Appkoder on 18/09/2016.
//  Copyright © 2016 Appkoder. All rights reserved.
//

import UIKit

class CostlyViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var finalTextCostly = ""
    var titleCostly = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = finalTextCostly
        titleLabel.text = titleCostly
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
