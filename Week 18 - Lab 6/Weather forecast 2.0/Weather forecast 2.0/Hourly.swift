//
//  Hourly.swift
//  Weather forecast 2.0
//
//  Created by Hamza Ghani on 13/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import Foundation

public struct Hourly{
    public let summary : String
    public let icon : String
    public let precipProbability : Double
    public let temperature : Double
    let unixtime : Int32
    
    
    public var time : Date{
        get { return Date(timeIntervalSince1970: TimeInterval(unixtime))
        }
    }
    public init(json: [String: Any]){
        unixtime  = json["time"] as! Int32
        summary = json["summary"] as! String
        icon = json["icon"] as! String
        precipProbability = json["precipProbability"] as! Double
        temperature = json["temperature"] as! Double
    }
    
}

extension Hourly{
    public static func forecasts( _ completion: @escaping ([Hourly]) -> Void ) {
        let urlString = "https://api.darksky.net/forecast/daef8b9872252b375ea2a954c2a66c17/37.8267,-122.4233"
        let url = URL(string: urlString)
        var forecasts = [Hourly]()
        let session = URLSession.shared.dataTask(with:url!) { (data, _, _) in
            let parsedData = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
            let hourlyJSON = parsedData?["hourly"] as! [String:Any]
            for item in hourlyJSON["data"] as! [Any]{
                let hour = item as! [String:Any]
                forecasts.append(Hourly(json: hour))
            }
            completion(forecasts)
        }
        session.resume()
    }
}
