//
//  NumberTableViewCell.swift
//  Task 9
//
//  Created by Hamza Ghani on 07/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class NumberTableViewCell: UITableViewCell {

    @IBOutlet weak var Sectionlabel: UILabel!
    @IBOutlet weak var RowLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
