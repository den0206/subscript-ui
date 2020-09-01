//
//  TopMoviePreview.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    
    //MARK: - Property
    var movie : Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailUrl)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                /// category
                HStack {
                    ForEach(movie.categories, id : \.self) {category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                .padding(.bottom,5)
                /// buttons
                HStack {
                    Spacer()
                    
                    SmallVertivalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        /// list action
                        
                    }
                    Spacer()

                    PlayButton(text: "Play", imageName: "play.fill") {
                        ///
                    }
                    .frame(width: 120)
                    
                    Spacer()

                    
                    SmallVertivalButton(text: "info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        /// info action
                    }
                    
                    Spacer()

                }
                .padding(.vertical, 16)
            }
            /// gradient
            .background(
                LinearGradient.blackOpacityGradient
                /// gradient from half area
                    .padding(.top, 300)
            )
                    
        }
        .foregroundColor(.white)
    }
}

extension TopMoviePreview {
    
    //MARK: - function
    
    func isCategoryLast(category : String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TopMoviePreview(movie: exampleMovie1)
        }
        
    }
}
