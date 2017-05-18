//
//  ToDoTableViewController.swift
//  ToDo Exams
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit
import CoreData

class ToDoTableViewController: UITableViewController {

    var toDoArry = [ToDo]()
    
    
    var managedObjectContext: NSManagedObjectContext?{
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        fetchToFoFromCoreData()
    }
    
    func fetchToFoFromCoreData() {
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "ToDo")
        do {
            toDoArry = try managedObjectContext!.fetch(fetchRequest as! NSFetchRequest<ToDo>)
            self.tableView.reloadData()
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoArry.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! ToDoTableViewCell

        // Configure the cell...
        
        
        //let item = toDoArry[indexPath.row]
        
//        cell.textLabel?.text = item.value(forKeyPath: "title") as! String?

        
        cell.configCell(todo: toDoArry[indexPath.row])
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.
        if segue.identifier == "summarySegue" {
            
        let summaryVc = segue.destination as! SummaryViewController
        let rowIndex = self.tableView.indexPathForSelectedRow?.row
        summaryVc.toDo.append(self.toDoArry[rowIndex!])
       
        }
        
    }


}
