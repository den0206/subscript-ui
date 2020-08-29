//
//  Episode.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/29.
//

import Foundation

struct Episode : Identifiable {
    var id = UUID().uuidString
    
    var name : String
    var season : Int
    var thumbnailImageUrlString : String
    var description : String
    var length : Int
    
    var thubnaulUrl : URL {
        return URL(string: thumbnailImageUrlString)!
    }
}
