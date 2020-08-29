//
//  GlobalHelpers.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 2020,rating: "TV",numberOfSeasons: 1,
    defaultEpisodeInfo:  exampleEpisodeInfo1,
    creators : "me",
    cast : "Me",
    promotionHeadLine: "promotion"
    )

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Trvelars",
    thumbnailUrl: URL(string: "https://picsum.photos/200/301")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 1919,rating: "TV", defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me")

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "cominuty",
    thumbnailUrl: URL(string: "https://picsum.photos/200/302")!,
    categories: ["excitein","Dystopian", "Wifi"],year: 2000,
    rating: "TV",defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me",
    promotionHeadLine: "promotion")

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "StarWars", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!,
     categories: ["excitein","Dystopian", "Wifi"],
    year: 2122,rating: "TV",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators : "me",
    cast : "Me")

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "milk",
    thumbnailUrl: URL(string: "https://picsum.photos/200/304")!,
    categories: ["excitein","Dystopian", "Wifi"],year: 1922,
    rating: "TV", defaultEpisodeInfo: exampleEpisodeInfo1,
    creators : "me",
    cast : "Me")

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "AfterLife",
    thumbnailUrl: URL(string: "https://picsum.photos/200/305")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 2211,rating: "TV",
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me",
    promotionHeadLine: "promotion")


let exampleMovies : [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

//MARK: - episodeInfo

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "sfdafasdfadfadfa", description: "afsfasfasdfada", season: 2, episode: 1)
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "fdafda", description: "fsf", season: 2, episode: 1)


extension LinearGradient {
    
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top,endPoint: .bottom)
}

extension String {
    func widthOfString(font : UIFont) -> CGFloat {
        let fontAttribute = [NSAttributedString.Key.font : font]
        let size = self.size(withAttributes: fontAttribute)
        
        return size.width
    }
}
