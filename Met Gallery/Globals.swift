//
//  Globals.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

// MARK: - Data Model ---------------------------------

class Painting {
    var thumbName: String
    var imageName: String
    var artist: String
    var title: String
    var date: String
    var onlineReference: String
    
    init(thumbName: String, imageName: String, artist: String, title: String, date: String, onlineReference: String) {
        self.thumbName = thumbName
        self.imageName = imageName
        self.artist = artist
        self.title = title
        self.date = date
        self.onlineReference = onlineReference
    }
}





