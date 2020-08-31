//
//  HomeStack.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/31.
//

import SwiftUI

struct HomeStack: View {
    
    var vm : HomeViewModel
    var topRow : HomeTopRow
    var selectedGenre : HomeGenre
    
    @Binding var movieDetailShow : Movie?
    
    
    var body: some View {
        ForEach (vm.allCategories, id : \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCategory: category, homeRow: topRow, genre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal, 20)
                                .onTapGesture(perform: {
                                    self.movieDetailShow = movie
                                })
                        }
                    }
                }
            }
            
        }
    }
}


struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeViewModel(), topRow: .home, selectedGenre: .AllGenre, movieDetailShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
        
    }
}
