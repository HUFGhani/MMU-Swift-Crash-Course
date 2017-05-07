//
//  Friend.swift
//  Task 6 Advanced
//
//  Created by Hamza Ghani on 07/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import Foundation
import UIKit

class Friend : CustomStringConvertible{
    
    var firstName: String
    var lastName:String
    var image: UIImage?
    
    
    init(firstName:String,lastName:String,image:UIImage?){
        self.firstName = firstName
        self.lastName = lastName
        self.image = image
    }
    
    var description: String{
        return "\(firstName) \(lastName)"
    }
    
}
