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
    
    // Personalization
    
    var currentEpisode : CurrentEpisodeInfo?
    var defaultEpisodeInfo : CurrentEpisodeInfo
    
    var creators : String
    var cast : String

    var episods : [Episode]?
    var promotionHeadLine : String?
    
    var moreLikeThisMoives : [Movie]
    var trailers : [Trailer]
    var numberOfSeasonsDisplay : String {
        guard let num = numberOfSeasons else {return "0"}
        
        return "\(num) seasons"
    }
    
    var episodeInfoDisplay : String {
        guard let current = currentEpisode else {return "\(defaultEpisodeInfo.season) : \(defaultEpisodeInfo.episode)"}
        
        return "\(current.season) : \(current.episode)"
    }
    
    var episodeDescriptionDisplay : String {
        guard let current = currentEpisode else {return defaultEpisodeInfo.description}
        
        return current.description
        
    }
}

struct  CurrentEpisodeInfo : Hashable,Equatable {
    
    var episodeName : String
    var description : String
    var season : Int
    var episode : Int
}
