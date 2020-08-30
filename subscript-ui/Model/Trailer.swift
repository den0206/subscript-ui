//
//  Trailer.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/30.
//

import Foundation

struct Trailer : Identifiable, Hashable {
    var id : String = UUID().uuidString
    var name : String
    var videoUrl : URL
    var thumbnailImageUrl : URL
}
