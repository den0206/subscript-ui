//
//  StandardHomeMovie.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    
    //MARK: - Property
    var movie : Movie
    
    var body: some View {
        KFImage(movie.thumbnailUrl)
            .resizable()
            .scaledToFill()
        
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
