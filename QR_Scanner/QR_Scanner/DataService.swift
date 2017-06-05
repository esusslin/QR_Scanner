//
//  DataService.swift
//  QR_Scanner
//
//  Created by Emmet Susslin on 6/5/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class DataService {
    
    static let dataService = DataService()
    
    
    static func searchAPI(codeNumber: String) {

        print("**************************************")
        print(codeNumber)
        // The URL we will use to get out album data from Discogs
        
        
        let amazonURL = "http://webservices.amazon.com/onca/xml?Service=AWSECommerceService&Operation=ItemLookup&SubscriptionId=" + "\(AccessKeyID)" + "AssociateTag=esuss-20" + "&ItemId=" + codeNumber + "&IdType=UPC&ResponseGroup=ItemAttributes,Offers&SearchIndex=All"
        
        
        print("**************************************")
        
        print("search string:" + "\(amazonURL)")
        print("**************************************")
        
        Alamofire.request(amazonURL)
            .responseJSON { response in
                
                print(response.request)  // original URL request
                print(response.response) // HTTP URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                var json = JSON(response.result.value!)
                
                
                
//                self.dataService.ALBUM_FROM_DISCOGS = albumArtistTitle
//                self.dataService.YEAR_FROM_DISCOGS = albumYear
                
                // Post a notification to let AlbumDetailsViewController know we have some data.
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "AlbumNotification"), object: nil)
        }
    }
    
}

