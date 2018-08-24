//
//  ResultViewController.swift
//  Bill Splitter
//
//  Created by Pulkit Aggarwal on 24/08/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var finalText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            resultLabel.text = finalText
    }
    /*
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil) method 1 to dismiss viewController
    }*/
}
