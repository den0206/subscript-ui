//
//  HomeVIewModel.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    //MARK: - key is category
    @Published var movies : [String : [Movie]] = [:]
    
    public var allCategories : [String] {
        return movies.keys.map({String(($0))})
    }
    
    public var allGenre : [HomeGenre] = [.AllGenre, .Action, .Comedy,.Horror]
    
    public func getMovie(forCategory : String, homeRow : HomeTopRow, genre : HomeGenre) -> [Movie]{
        
        
        switch homeRow {
        case .home :
            return movies[forCategory] ?? []
        case .movies :
            return (movies[forCategory] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShow :
            return (movies[forCategory] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre)})
            
        case .myList :
            // TODO: - add My list filter
            return movies[forCategory] ?? []


        }
    }
    
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["horror"] = exampleMovies.shuffled()
        movies["action"] = exampleMovies.shuffled()
        movies["family"] = exampleMovies.shuffled()
    }

    
}
