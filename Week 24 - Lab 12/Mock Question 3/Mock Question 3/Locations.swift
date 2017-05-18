//
//  Locations.swift
//  Mock Question 3
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import Foundation
import MapKit

class Locations:NSObject, MKAnnotation{
    let title: String?
    var coordinate: CLLocationCoordinate2D

    
    init(title:String,coordinate:CLLocationCoordinate2D){
        self.title  = title
        self.coordinate = coordinate
    }
}
