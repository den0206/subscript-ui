//
//  VideoPreviewImage.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/30.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImageView: View {
    
    var imageUrl : URL
    var videoUrl : URL
    
    @State private var showinfVideoPlayer = false
    
    var body: some View {
        ZStack {
             KFImage(imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            
            Button(action: {
                self.showinfVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
            })
            .sheet(isPresented: $showinfVideoPlayer, content: {
                SwiftUIVideoView(url: videoUrl)
            })
        }
        
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImageView(imageUrl: creatExampleImageUrl(Int: 4), videoUrl: exampleVideoUrl)
        
    }
}
