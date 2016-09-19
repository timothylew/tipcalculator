//
//  SettingsViewController.swift
//  tippy
//
//  Created by Student on 9/19/16.
//  Copyright © 2016 Timothy Lew. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipValue = defaults.doubleForKey("default_tip_percentage")
        defaultControl.selectedSegmentIndex = Int(tipValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func changeDefaultTip(sender: AnyObject) {
        let defaultIndex = Double(defaultControl.selectedSegmentIndex)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(defaultIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
    }

}
