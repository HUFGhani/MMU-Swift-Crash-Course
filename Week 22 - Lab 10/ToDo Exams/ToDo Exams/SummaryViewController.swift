//
//  SummaryViewController.swift
//  ToDo Exams
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    
    var toDo = [ToDo]()
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblPriority: UILabel!
    
    @IBOutlet weak var lblCompleted: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblTitle.text = toDo[0].title
        
        if toDo[0].priority == 1{
            lblPriority.text = "Medium"
        }else if toDo[0].priority == 2{
            lblPriority.text = "High"
        }else if toDo[0].priority == 0{
            lblPriority.text = "Low"
        }
        
        if toDo[0].completed == true{
            lblCompleted.text = "completed"
        }else{
            lblCompleted.text = "Not Completed Yet"
        }
        
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
        
        
        if segue.identifier == "editSegue"{
            let aEditVc = segue.destination as! AddEditViewController
            
            aEditVc.toDo.append(toDo[0])
        }
    }
 

}
