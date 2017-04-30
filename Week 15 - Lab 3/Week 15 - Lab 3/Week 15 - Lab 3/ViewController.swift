//
//  ViewController.swift
//  Week 15 - Lab 3
//
//  Created by Hamza Ghani on 30/04/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let HelloLable = UILabel(frame: CGRect(x: 0, y: 50, width: 400, height: 50))
        HelloLable.textAlignment = .center
        HelloLable.text = "Hello, World!"
        HelloLable.font = HelloLable.font.withSize(40)
        view.addSubview(HelloLable)
        
        let redlabel = UILabel(frame: CGRect(x: 80, y: 100, width: 100, height: 100))
        redlabel.text = "red"
        redlabel.textColor = UIColor.red
        view.addSubview(redlabel)
        
        let myRedView = UIView(frame: CGRect(x: 40, y: 160, width: 100, height: 100))
        myRedView.backgroundColor = UIColor.red
        view.addSubview(myRedView)
    
        let brownlabel = UILabel(frame: CGRect(x: 220, y: 100, width: 100, height: 100))
        brownlabel.text = "brown"
        brownlabel.textColor = UIColor.brown
        view.addSubview(brownlabel)
        
        let myBrownView = UIView(frame: CGRect(x: 200, y: 160, width: 100, height: 100))
        myBrownView.backgroundColor = UIColor.brown
        view.addSubview(myBrownView)
        
        let cyanlabel = UILabel(frame: CGRect(x: 150, y: 225, width: 100, height: 100))
        cyanlabel.text = "cyan"
        cyanlabel.textColor = UIColor.cyan
        view.addSubview(cyanlabel)
        
        let myCyanView = UIView(frame: CGRect(x: 40, y: 300, width: 270, height: 100))
        myCyanView.backgroundColor = UIColor.cyan
        view.addSubview(myCyanView)
        
        let purplelabel = UILabel(frame: CGRect(x: 40, y: 380, width: 100, height: 100))
        purplelabel.text = "purple"
        purplelabel.textColor = UIColor.purple
        view.addSubview(purplelabel)
        
        let mypurpleView = UIView(frame: CGRect(x: 40, y: 450, width: 50, height: 50))
        mypurpleView.backgroundColor = UIColor.purple
        view.addSubview(mypurpleView)
        
        
        let orangelabel = UILabel(frame: CGRect(x: 150, y: 380, width: 100, height: 100))
        orangelabel.text = "orange"
        orangelabel.textColor = UIColor.orange
        view.addSubview(orangelabel)
        
        let myorangeView = UIView(frame: CGRect(x: 150, y: 450, width: 50, height: 50))
        myorangeView.backgroundColor = UIColor.orange
        view.addSubview(myorangeView)
        
        let greenlabel = UILabel(frame: CGRect(x: 250, y: 380, width: 100, height: 100))
        greenlabel.text = "green"
        greenlabel.textColor = UIColor.green
        view.addSubview(greenlabel)

        let mygreenView = UIView(frame: CGRect(x: 250, y: 450, width: 50, height: 50))
        mygreenView.backgroundColor = UIColor.green
        view.addSubview(mygreenView)
        
        let mycyan1View = UIView(frame: CGRect(x: 40, y: 550, width: 100, height: 100))
        mycyan1View.backgroundColor = UIColor.cyan
        view.addSubview(mycyan1View)
        
        let mygreen1View = UIView(frame: CGRect(x: 75, y: 585, width: 25, height: 25))
        mygreen1View.backgroundColor = UIColor.magenta
        view.addSubview(mygreen1View)
     
        let myred1View = UIView(frame: CGRect(x: 200, y: 550, width: 100, height: 100))
        myred1View.backgroundColor = UIColor.red
        view.addSubview(myred1View)
        
        let mywhite1View = UIView(frame: CGRect(x: 240, y: 585, width: 25, height: 25))
        mywhite1View.backgroundColor = UIColor.white
        view.addSubview(mywhite1View)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

