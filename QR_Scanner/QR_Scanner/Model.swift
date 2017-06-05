//
//  Model.swift
//  QR_Scanner
//
//  Created by Emmet Susslin on 6/5/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import Foundation

class Album {
    
    private(set) var album: String!
    private(set) var year: String!
    
    init(artistAlbum: String, albumYear: String) {
        
        // Add a little extra text to the album information
        self.album = "Album: \n\(artistAlbum)"
        self.year = "Released in: \(albumYear)"
    }
    
    
    
}
