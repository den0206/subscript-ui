//
//  Movie.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import Foundation

struct Movie : Identifiable{
    
    var id : String
    var name : String
    var thumbnailUrl : URL
    var categories : [String]
    
    /// detail VIew
    var year : Int
    var rating : String
    var numberOfSeasons : Int?
    
    var episode : [Episode]?
    var promotionHeadLine : String?
    
    var numberOfSeasonsDisplay : String {
        guard let num = numberOfSeasons else {return "0"}
        
        return "\(num) seasons"
    }
    
}
