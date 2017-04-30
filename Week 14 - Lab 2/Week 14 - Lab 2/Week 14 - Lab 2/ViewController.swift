//
//  ViewController.swift
//  Week 14 - Lab 2
//
//  Created by Hamza Ghani on 30/04/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMood: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sad(_ sender: Any) {
     
        labelMood.text = "😔"
    }

    @IBAction func happy(_ sender: Any) {
 
        labelMood.text = "😀"
    }
}

