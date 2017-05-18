//
//  AddEditViewController.swift
//  ToDo Exams
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit
import CoreData

class AddEditViewController: UIViewController {

    @IBOutlet weak var txtTtitle: UITextField!
    @IBOutlet weak var segPriority: UISegmentedControl!
    @IBOutlet weak var chkCompleted: UISwitch!
    
    var toDo = [ToDo]()
    
    
    var editTitle: String?
    var editPriority: Int16?
    var editCompleted: Bool?
    
    var managedObjectContext: NSManagedObjectContext? {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDo.count > 0 {
            
        editTitle = toDo[0].title
        editPriority = toDo[0].priority
        editCompleted = toDo[0].completed
        
        if editTitle != nil {
            self.txtTtitle?.text = self.editTitle
            self.chkCompleted?.isOn = self.editCompleted!
            
            var segment: Int?
            if self.editPriority == 1{
                segment = 1
            }else if self.editPriority == 2{
                segment = 2
            }else if self.editPriority == 0 {
                segment = 0
            }
            
            self.segPriority.selectedSegmentIndex = segment!
            
        }
        
        }
        
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

    @IBAction func barbtnSave(_ sender: Any) {
        
        let toDoTitle  = txtTtitle.text
        let toDoPriortiy = segPriority.selectedSegmentIndex
        let toDoCompleted = chkCompleted.isOn
        
        if editTitle == nil{
        saveToCoreData(tTitle: toDoTitle!, tPriortiy: Int16(toDoPriortiy), tcompleted: toDoCompleted)
        }else{
            updateCoreData(tTitle: toDoTitle!, tPriortiy: Int16(toDoPriortiy), tcompleted: toDoCompleted)
        }
    }
    
    
    func saveToCoreData(tTitle: String, tPriortiy: Int16, tcompleted: Bool){
        let entity =
            NSEntityDescription.entity(forEntityName: "ToDo",
                                       in: managedObjectContext!)!
        let todo = ToDo(entity: entity,
                                   insertInto: managedObjectContext)
        
        todo.setValue(tTitle, forKeyPath: "title")
        todo.setValue(tPriortiy, forKeyPath: "priority")
        todo.setValue(tcompleted, forKeyPath: "completed")
        
        do{
            try managedObjectContext?.save()
            self.navigationController!.popToRootViewController(animated: true)
        }catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }

    }
    
    func updateCoreData(tTitle: String, tPriortiy: Int16, tcompleted: Bool){
       
        do {
            let obj = managedObjectContext?.object(with: toDo[0].objectID) as! ToDo
            obj.setValue(tTitle, forKeyPath: "title")
            obj.setValue(tPriortiy, forKeyPath: "priority")
            obj.setValue(tcompleted, forKeyPath: "completed")

            
            try managedObjectContext?.save()
            self.navigationController!.popToRootViewController(animated: true)
        }catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }

    }
    
    
    @IBAction func barbtnCancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
    }
    
    
}
