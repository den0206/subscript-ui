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
}
