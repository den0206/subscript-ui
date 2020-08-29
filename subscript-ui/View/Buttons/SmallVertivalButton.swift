//
//  SmallVertivalButton.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/29.
//

import SwiftUI

struct SmallVertivalButton: View {
    var text : String
    var isOnImage : String
    var isOffImage : String
    
    var isOn : Bool
    
    var imagename : String {
        return isOn ? isOnImage : isOffImage
    }
    
    var action :() -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imagename)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        } )
    }
}

struct SmallVertivalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            /// preview
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVertivalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false, action: {
                print("Tappes")
            })
            
        }
    }
}
