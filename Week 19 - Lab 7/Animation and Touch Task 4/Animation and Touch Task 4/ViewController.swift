//
//  ViewController.swift
//  Animation and Touch Task 4
//
//  Created by Hamza Ghani on 13/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceLabel: UILabel!
    

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slider.value = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animate(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 1:
            let routate = UIViewPropertyAnimator(duration: 2, curve: .easeInOut){
            self.faceLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
            routate.startAnimation()
        case 2:
            let anim = UIViewPropertyAnimator(duration: 2, curve: .easeInOut){
                self.faceLabel.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
            anim.startAnimation()
        case 3:
            let translation = UIViewPropertyAnimator(duration: 2, curve: .easeInOut){
            self.faceLabel.transform = CGAffineTransform(translationX:0, y: -200)
            }
            translation.startAnimation()
        default:
            let reset = UIViewPropertyAnimator(duration: 0, curve: .easeIn){
            self.faceLabel.transform = CGAffineTransform.identity
            }
            reset.startAnimation()
        }
    }

    @IBAction func go(_ sender: Any) {
        let alpha = UIViewPropertyAnimator(duration: 2, curve: .easeIn){
            self.faceLabel.alpha = CGFloat(self.slider.value)
        }
        alpha.startAnimation()
    }
}

