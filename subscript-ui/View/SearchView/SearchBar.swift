//
//  SearchBar.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/09/01.
//

import SwiftUI

struct SearchBar: View {
    
    /// search View で扱う
    @Binding  var text : String
    @Binding  var isLoading : Bool

    @State private var isEditing : Bool = true

    
    
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
                    .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                        isEditing = true
                    })
                
                if !text.isEmpty {
                    if isLoading {
                        
                        Button(action: {
                            /// Xl BUtton
                            text = ""
                            
                        }, label: {
                            /// activity indicator
                            ActivityIndicator(style: .medium, animate: .constant(true))
                                .configure({ (activity) in
                                    activity.color = .white
                                })
                                .padding(.trailing, 32)
                                .frame(width: 35, height: 35)
                        })
                        
                        
                    } else {
                        Button(action: {
                            
                            /// Xl BUtton
                            text = ""
                        
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                        })
                        
                        
                    }
                }
               
                
               
                if isEditing {
                    Button(action: {
                        
                        /// cancel BUtton
                        text = ""
                        isEditing = false
                        hideKeyboard()
                        
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                    })
                    .padding(.trailing,10)
                }
                
                
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBar(text: .constant(""), isLoading: .constant(false))
                .padding()
            
            
        }
        
    }
}
