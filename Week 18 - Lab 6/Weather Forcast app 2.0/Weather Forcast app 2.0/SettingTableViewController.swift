//
//  SettingTableViewController.swift
//  Weather Forcast app 2.0
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    
    
    var temperatueScale: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "settingDone"{
         let citiesVC = segue.destination as! CitiesTableViewController
            citiesVC.temperature = temperatueScale!
        }
        
    }
 
    
    @IBAction func chktemperature(_ sender: UISwitch) {
        
        if sender.isOn == true{
            self.temperatueScale = "us"
        }else{
            self.temperatueScale = "is"
        }
        
    }
    

}
