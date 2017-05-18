//
//  cities.swift
//  Weather Forcast app 2.0
//
//  Created by Hamza Ghani on 18/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import Foundation
class cities {
    var cityName: String?
    var lat: Double?
    var long: Double?
    
    public init(city: String, lat: Double, long: Double){
        self.cityName = city
        self.lat = lat
        self.long = long
    }
    
    
}
