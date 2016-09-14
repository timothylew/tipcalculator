//
//  ViewController.swift
//  tippy
//
//  Created by Student on 9/13/16.
//  Copyright (c) 2016 Timothy Lew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let bill = (billField.text!) as Double
        let tip = bill * 0.2
        //let total = bill + tip
        
        //tipLabel.text = String(format: "$%f", tip)
        //totalLabel.text = String(format: "$%f", total)
    }

}

