//
//  MovieDetail.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/29.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie : Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                /// close Button
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal,22)
                
                ///
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubLine(movie: movie)
                        
                        if movie.promotionHeadLine != nil {
                            Text(movie.promotionHeadLine!)
                                .bold()
                                .font(.headline)
                        }
                    }
                }
                
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}

struct MovieInfoSubLine: View {
    
    var movie : Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
        
        
    }
}

struct RatingView: View {
    var rating : String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
        
    }
}
