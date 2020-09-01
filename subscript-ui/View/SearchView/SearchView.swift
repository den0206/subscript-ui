//
//  SearchView.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/09/01.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var vm = SearchViewModel()
    @State private var serachText = ""
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: $serachText, isLoading: $vm.isLoading)
                
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
       
        SearchView()
    }
}
