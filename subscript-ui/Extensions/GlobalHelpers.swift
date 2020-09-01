//
//  GlobalHelpers.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import Foundation
import SwiftUI

let exampleVideoUrl = URL(string: "https://firebasestorage.googleapis.com/v0/b/gameofchats-762ca.appspot.com/o/message_movies%2F12323439-9729-4941-BA07-2BAE970967C7.mov?alt=media&token=3e37a093-3bc8-410f-84d3-38332af9c726")!

func creatExampleImageUrl(Int : Int) -> URL {
    
    let urlString = "https://picsum.photos/200/10\(Int)"
    
    return URL(string: urlString)!
}

let exampleTrailer1 = Trailer(name: "Season3 trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: creatExampleImageUrl(Int: 4))
let exampleTrailer2 = Trailer(name: "Season4 trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: creatExampleImageUrl(Int: 5))
let exampleTrailer3 = Trailer(name: "Season5 trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: creatExampleImageUrl(Int: 6))
let exampleTrailer4 = Trailer(name: "Season6 trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: creatExampleImageUrl(Int: 7))
let exampleTrailer5 = Trailer(name: "Season7 trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: creatExampleImageUrl(Int: 8))

var exampleTrailers : [Trailer] {
    return [exampleTrailer1,exampleTrailer2,exampleTrailer3,exampleTrailer4,exampleTrailer5]
}

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 2020,rating: "TV",numberOfSeasons: 3,
    defaultEpisodeInfo:  exampleEpisodeInfo1,
    creators : "me",
    cast : "Me",
    episods: [exampleEpisode1,exampleEpisode2],
    promotionHeadLine: "promotion",
    moreLikeThisMoives: [exampleMovie2,exampleMovie3], trailers: exampleTrailers
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Trvelars",
    thumbnailUrl: URL(string: "https://picsum.photos/200/301")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 1919,rating: "TV", defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me",
    moreLikeThisMoives: [], trailers: exampleTrailers
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "cominuty",
    thumbnailUrl: URL(string: "https://picsum.photos/200/302")!,
    categories: ["excitein","Dystopian", "Wifi"],year: 2000,
    rating: "TV",defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me",
    promotionHeadLine: "promotion",
    moreLikeThisMoives:[], trailers: exampleTrailers
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "StarWars", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!,
     categories: ["excitein","Dystopian", "Wifi"],
    year: 2122,rating: "TV",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators : "me",
    cast : "Me", moreLikeThisMoives:[], trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "milk",
    thumbnailUrl: URL(string: "https://picsum.photos/200/304")!,
    categories: ["excitein","Dystopian", "Wifi"],year: 1922,
    rating: "TV", defaultEpisodeInfo: exampleEpisodeInfo1,
    creators : "me",
    cast : "Me", moreLikeThisMoives:[], trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "AfterLife",
    thumbnailUrl: URL(string: "https://picsum.photos/200/305")!,
    categories: ["excitein","Dystopian", "Wifi"],
    year: 2211,rating: "TV",
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators : "me",
    cast : "Me",
    promotionHeadLine: "promotion", moreLikeThisMoives: [], trailers: exampleTrailers)


var exampleMovies : [Movie] {
    return [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
}

//MARK: - episodeInfo

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "sfdafasdfadfadfa", description: "afsfasfasdfada", season: 2, episode: 1)
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "fdafda", description: "fsf", season: 2, episode: 1)

//MARK: - Episode obj

let exampleEpisode1 = Episode(name: "dfasdfa", season: 1,
                             episodeNumber: 1,
                             thumbnailImageUrlString: creatExampleImageUrl(Int: 6).absoluteString,
                             description: "adfadfa", length: 53,
                             videoUrl: exampleVideoUrl
)

let exampleEpisode2 = Episode(name: "sdfasd", season: 1,
                             episodeNumber: 2,
                             thumbnailImageUrlString: creatExampleImageUrl(Int: 5).absoluteString,
                             description: "adfadfa", length: 47,
                             videoUrl: exampleVideoUrl
)

let exampleEpisode3 = Episode(name: "asfsfsa", season: 1,
                             episodeNumber: 3,
                             thumbnailImageUrlString: creatExampleImageUrl(Int: 8).absoluteString,
                             description: "adfadfa", length: 53,
                             videoUrl: exampleVideoUrl
)




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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

