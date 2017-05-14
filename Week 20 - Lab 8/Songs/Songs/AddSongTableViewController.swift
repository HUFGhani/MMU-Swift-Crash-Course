//
//  AddSongTableViewController.swift
//  Songs
//
//  Created by Hamza Ghani on 14/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit
import CoreData

class AddSongTableViewController: UITableViewController {

    @IBOutlet weak var tiltle: UITextField!
    @IBOutlet weak var artist: UITextField!
    
    var managedObjectContext: NSManagedObjectContext? {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSaveBarButton()
    }
    
    func setSaveBarButton()  {
        let saveBarButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(AddSongTableViewController.saveSong))
        navigationItem.rightBarButtonItem = saveBarButton
    }

    func saveSong(){
        if tiltle!.text!.isEmpty || artist.text!.isEmpty {
           let alert = UIAlertController(title: "OOPS", message: "Please add information that it can be saved", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
            if let moc = managedObjectContext{
                let songs = Songs(context:moc)
                songs.title = String(tiltle.text!)!
                songs.artist = String(artist.text!)!
                
                saveToCoreData(){
                    self.navigationController!.popToRootViewController(animated: true)
                }
            }
        }
    }
    
    
    func saveToCoreData(completion: @escaping () -> Void){
        managedObjectContext?.perform {
            do{
                try self.managedObjectContext?.save()
                completion()
            }catch let error as NSError{
                print("Could not save. \(error), \(error.userInfo)")
            }
            
        }
    }
}
