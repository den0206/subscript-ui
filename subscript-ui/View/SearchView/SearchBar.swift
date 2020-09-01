//
//  SearchBar.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/09/01.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            /// serchbar BackGround
            Color.graySearchBackground
                .frame(width: 220,height: 36)
                .cornerRadius(8)
            
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchBText)
                    .padding(.leading,12)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                 
                
                
                Button(action: {
                    
                    /// Xl BUtton
                    
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                })
               
                
                Button(action: {
                    
                    /// cancel BUtton
                    
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing,10)
                
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBar()
                .padding()
            
            
        }
        
    }
}
