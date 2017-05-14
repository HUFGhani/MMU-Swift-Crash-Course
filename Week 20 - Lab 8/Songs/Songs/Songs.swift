//
//  Songs.swift
//  Songs
//
//  Created by Hamza Ghani on 14/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import Foundation
import CoreData

struct Songs {
    var title : String?
    var artist : String?
}

class SongsData: NSManagedObject {
    
    @NSManaged var title : String
    @NSManaged var artist : String
    
    var songs :Songs{
        get{
            return Songs(title: self.title, artist: self.artist)
        }
        set{
            self.title = newValue.title!
            self.artist = newValue.artist!
        }
    }
}
