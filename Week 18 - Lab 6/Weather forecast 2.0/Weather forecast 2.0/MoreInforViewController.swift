//
//  MoreInforViewController.swift
//  Weather forecast 2.0
//
//  Created by Hamza Ghani on 13/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class MoreInforViewController: UIViewController {
    @IBOutlet weak var icon: UIImageView?
    @IBOutlet weak var summary: UILabel?
    @IBOutlet weak var temp: UILabel?
    
    var summ : String?
    var icons : String?
    var tem : Double?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        summary?.text = summ?.description 
        temp?.text = tem?.description
        icon?.image = UIImage(named: icons!)
        
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
