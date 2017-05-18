//
//  MoreInforViewController.swift
//  Weather Forcast app 2.0
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class MoreInforViewController: UIViewController {
    
    @IBOutlet weak var uiIconImage: UIImageView!
    
    @IBOutlet weak var lblSummary: UILabel!
    
    @IBOutlet weak var lblTemp: UILabel!
    
    var icon:String?
    var summary:String?
    var temp:Double = 0
    var scale:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if scale == "si"{
            lblTemp.text = "\(temp) °C"
        }else{
            lblTemp.text = "\(temp) °F"
        }
        lblSummary.text = summary
        uiIconImage.image = UIImage(named: icon!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
