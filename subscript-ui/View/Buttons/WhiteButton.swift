//
//  WhiteButton.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/29.
//

import SwiftUI

struct WhiteButton: View {
    
    var text : String
    var imageName : String
    
    var action : () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            HStack {
                
                Spacer()
                
                Image(systemName: imageName)
                
                Text(text)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                    .bold()
                
                Spacer()
            }
        })
        .padding(.vertical, 6)
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(3.0)
        
        
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill", action: {
                print("Tapped")
            })

        }
        
    }
}
