//
//  ToDoTableViewCell.swift
//  ToDo Exams
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var uivpriority: UIView!
    @IBOutlet weak var lbltitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(todo: ToDo){
    
        switch todo.priority {
        case 1:
            uivpriority.backgroundColor = UIColor.yellow
        case 2:
            uivpriority.backgroundColor = UIColor.red
        default:
            uivpriority.backgroundColor = UIColor.green
        }
        
        lbltitle.text = todo.title
        
        if todo.completed == true{
            lbltitle.textColor = UIColor.gray
        }else{
            lbltitle.textColor = UIColor.black
        }
    }

}
