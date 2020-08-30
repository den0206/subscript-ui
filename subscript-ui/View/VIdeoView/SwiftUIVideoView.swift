//
//  SwiftUIVideoView.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/30.
//

import SwiftUI
import  AVKit

struct SwiftUIVideoView: View {
    var url : URL
    
    private var player : AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoUrl)
    }
}
