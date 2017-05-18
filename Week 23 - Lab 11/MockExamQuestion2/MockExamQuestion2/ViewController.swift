//
//  ViewController.swift
//  MockExamQuestion2
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BlackPool: UIButton!
    @IBOutlet weak var effiel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ImagesViewController
        if let button = sender as? UIButton{
            
            if button == effiel{
                dvc.tower = "eiffel"
            }else if button == BlackPool {
                dvc.tower = "blackpool"
            }
        }
    }

}

