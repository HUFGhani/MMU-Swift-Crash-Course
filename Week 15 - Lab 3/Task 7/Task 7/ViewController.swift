//
//  ViewController.swift
//  Task 7
//
//  Created by Hamza Ghani on 30/04/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let HelloLable = UILabel(frame: CGRect(x: 0, y: 25, width: 400, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        HelloLable.textAlignment = .center
        HelloLable.font = HelloLable.font.withSize(40)
        self.view.addSubview(HelloLable)
        
        let sadbutton = UIButton(frame: CGRect(x:0 , y: 150, width: 300, height: 50))
        sadbutton.setTitle("Sad", for: .normal)
        sadbutton.setTitleColor(UIColor.blue, for: .normal)
        sadbutton.addTarget(self, action: #selector(sadPress), for: .touchUpInside)
        self.view.addSubview(sadbutton)
        
        
        let happybutton = UIButton(frame: CGRect(x:0 , y: 250, width: 300, height: 50))
        happybutton.setTitle("happy", for: .normal)
        happybutton.setTitleColor(UIColor.blue, for: .normal)
        happybutton.addTarget(self, action: #selector(happyPress), for: .touchUpInside)
        self.view.addSubview(happybutton)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sadPress(){
        HelloLable.text = "Sad"
    }

    
    func happyPress() {
        HelloLable.text = "Happy"
    }
}

