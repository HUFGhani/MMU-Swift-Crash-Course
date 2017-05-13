//
//  ViewController.swift
//  Animation and Touch
//
//  Created by Hamza Ghani on 13/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let anim = UIViewPropertyAnimator(duration: 2, curve: .easeInOut){
            self.faceLabel.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        anim.startAnimation()
    }

}

