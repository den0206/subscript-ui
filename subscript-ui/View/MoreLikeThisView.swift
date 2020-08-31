//
//  MoreLikeThisView.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/30.
//

import SwiftUI

/// collection View
struct MoreLikeThisView: View {
    var movies : [Movie]
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())

        
    ]
    
    var body: some View {
        
        
        LazyVGrid(columns: colums){
            ForEach(0..<movies.count) { index in
                
                StandardHomeMovie(movie: movies[index])
            }
            
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            MoreLikeThisView(movies: exampleMovies)
            
        }
    }
}
