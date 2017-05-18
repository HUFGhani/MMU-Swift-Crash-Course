//
//  WeatherForecastTableViewCell.swift
//  Weather Forcast app 2.0
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class WeatherForecastTableViewCell: UITableViewCell {
    @IBOutlet weak var lblDateTime: UILabel!
    @IBOutlet weak var uiIconImage: UIImageView!
    @IBOutlet weak var lblsummary: UILabel!
    
    @IBOutlet weak var temp: UILabel!
    
    
    override func awakeFromNib() {
    
        super.awakeFromNib()
 
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
