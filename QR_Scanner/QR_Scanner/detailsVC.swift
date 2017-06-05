//
//  detailsVC.swift
//  QR_Scanner
//
//  Created by Emmet Susslin on 6/5/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var artistAlbumLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
//    func setLabels(notification: NSNotification){
//        
//        // Use the data from DataService.swift to initialize the Album.
//        let albumInfo = Album(artistAlbum: DataService.dataService.ALBUM_FROM_DISCOGS, albumYear: DataService.dataService.YEAR_FROM_DISCOGS)
//        artistAlbumLabel.text = "\(albumInfo.album)"
//        yearLabel.text = "\(albumInfo.year)"
//    }

}
