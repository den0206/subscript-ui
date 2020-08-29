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
            /// backGround Color
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
                        
                        PlayButton(text: "Play", imageName: "play.fill", backGroundColor: Color.red) {
                            return
                        }
                        .padding(.horizontal, 10)
                        
                        CurrentEpisodeInfomation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        /// buttons
                        HStack(spacing : 60) {
                            
                            SmallVertivalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                
                            }
                            SmallVertivalButton(text: "rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                
                            }
                            SmallVertivalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "plus", isOn: true) {
                                
                            }
                            
                            Spacer()
                        }
                        .padding(.leading,20)
                        
                        
                        
                        /// custom Tab & Views
                        CustomTabSwitcher(tabs: [.episode,.trailers,.morelike])
                        
              
                        
                        
                        
                        
                        
                        
                        
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
    //MARK: - Property
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

struct CastInfo: View {
    var movie : Movie
    
    var body: some View {
        VStack(spacing: 3){
            HStack {
                Text("Creators : \(movie.creators)")
                Spacer()
            }
            
            HStack {
                Text("Cast : \(movie.cast)")
                Spacer()
                
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInfomation: View {
    
    var movie : Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
                
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
            
        }
    }
}
