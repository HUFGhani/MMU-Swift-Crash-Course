//
//  FriendsViewController.swift
//  Task 6 Advanced
//
//  Created by Hamza Ghani on 07/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var FirstnameLabel: UILabel!
    @IBOutlet weak var LastnameLabel: UILabel!
    
    @IBOutlet weak var FriendsImage: UIImageView!
    
    var firstname :String = ""
    var lastname :String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        FirstnameLabel.text = firstname.description
        LastnameLabel.text = lastname.description
        FriendsImage.image = UIImage(named: firstname.description.lowercased())
        
        title = firstname.description + " " + lastname.description
        
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
