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
    
    public func getMovie(forCategory : String) -> [Movie]{
        return movies[forCategory] ?? []
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
