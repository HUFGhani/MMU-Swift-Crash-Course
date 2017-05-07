//
//  FriendsTableViewController.swift
//  Task 10
//
//  Created by Hamza Ghani on 07/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friends = [Friend]()
    override func viewDidLoad() {
        super.viewDidLoad()

        friends.append(Friend(firstName: "Ross", lastName: "Geller", image:    UIImage(named: "ross.jpeg")))
        friends.append(Friend(firstName: "Joey", lastName: "Tribbiani", image: UIImage(named: "joey.jpeg")))
        friends.append(Friend(firstName: "Chandler", lastName:"Bing", image:  UIImage(named: "chandler.jpeg")))
        friends.append(Friend(firstName: "Monica", lastName: "Geller", image:  UIImage(named: "monica.jpeg")))
        friends.append(Friend(firstName: "Phoebe",lastName:"Buffay", image:    UIImage(named: "phoebe.jpeg")))
        friends.append(Friend(firstName: "Rachel", lastName: "Green", image:  UIImage(named: "rachel.jpeg")))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FriendsTableViewCell

        // Configure the cell...

        cell.friendName.text = friends[indexPath.row] .description
        cell.friendImage?.image = friends[indexPath.row].image
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = friends[sourceIndexPath.row]
        friends.remove(at: sourceIndexPath.row)
        friends.insert(movedObject, at: destinationIndexPath.row)
        NSLog("%@", "\(sourceIndexPath.row) => \(destinationIndexPath.row) \(friends)")
        // To check for correctness enable: self.tableView.reloadData()
    }
 

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
