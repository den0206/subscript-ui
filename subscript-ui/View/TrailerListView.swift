//
//  TrailerListView.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/30.
//

import SwiftUI

struct TrailerListView: View {
    
    var trailers : [Trailer]
    let screeen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                
                VStack(alignment: .leading){
                    VideoPreviewImageView(imageUrl: trailer.thumbnailImageUrl, videoUrl: trailer.videoUrl)
                        .frame(maxWidth: screeen.width )
                    
                    Text(trailer.name)
                        .font(.headline)
                    
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct TrailerListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TrailerListView(trailers: exampleTrailers)
            
        }
    }
}
