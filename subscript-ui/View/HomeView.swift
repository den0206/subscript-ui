//
//  HomeView.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import SwiftUI

struct HomeView: View {
    
    
    //MARK: - Property
    var vm = HomeViewModel()
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailShow : Movie? = nil
    
    @State private var topRowSelection : HomeTopRow = .home
    @State private var homeGenre : HomeGenre = .AllGenre
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelectiom = false
    
    var body: some View {
        
        /// backGround
        ZStack {
            
            
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main Vstack
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                
                LazyVStack {
                    
                    TopBarButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection,showTopRowSelectiom: $showTopRowSelectiom)
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -60)
                        .zIndex(-1)
                    
                    
                    HomeStack(vm: vm, topRow: topRowSelection, selectedGenre : homeGenre, movieDetailShow: $movieDetailShow)
                }
            }
            
            /// movie Detail View
            
            if movieDetailShow != nil {
                MovieDetail(movie: movieDetailShow!, movieDetailsToshow: $movieDetailShow)
                    .animation(.easeInOut)
                    .transition(.slide)
                
            }
            
            /// show TopRow Slection
            
            if showTopRowSelectiom {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        
                        Spacer()
                        
                        ForEach(HomeTopRow.allCases, id : \.self) { topRow in
                            
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelectiom = false
                            }, label: {
                                if topRow == topRowSelection {
                                    Text(String(topRow.rawValue))
                                        .bold()

                                } else {
                                    Text(String(topRow.rawValue))
                                        .foregroundColor(.gray)
                                }
                                   
                                
                            })
               
                        }
                        
                        Spacer()
                        /// close Button
                        
                        Button(action: {
                            showTopRowSelectiom = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom,30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
                
            }
            
            /// show Genre Slection
            
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        
                        Spacer()
                        
                        ScrollView {
                            ForEach(vm.allGenre, id : \.self) { genre in
                                
                                
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }, label: {
                                    
                                    if genre == homeGenre {
                                        Text(String(genre.rawValue))
                                            .bold()
                                        
                                    } else {
                                        Text(String(genre.rawValue))
                                            .foregroundColor(.gray)
                                    }
                                    
                                    
                                })
                                .padding(.bottom ,40)
                                
                            }
                        }
                        
                        
                        
                        Spacer()
                        /// close Button
                        
                        Button(action: {
                            showGenreSelection = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom,30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
                
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopBarButtons: View {
    
    @Binding var topRowSelection : HomeTopRow
    @Binding var homeGenre : HomeGenre
    
    @Binding var showGenreSelection :Bool
    @Binding var showTopRowSelectiom :Bool
    
    var body: some View {
        
        switch topRowSelection {
        case .home :
            
            HStack{
                Button(action: {
                    topRowSelection = .home
                    
                }, label: {
                    Image("soku")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Button(action: {
                    topRowSelection = .tvShow
                }, label: {
                    Text("1")
                    
                })
                
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("2")
                    
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("3")
                    
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
            
        case .tvShow, .movies, .myList:
            HStack{
                /// logo
                Button(action: {
                    topRowSelection = .home
                    
                }, label: {
                    Image("soku")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    
                })
                .buttonStyle(PlainButtonStyle())
                
                HStack(spacing: 20) {
                    Button(action: {
                        showTopRowSelectiom = true
                    }, label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180),anchor: .center)
                            
                        }
                        
                    })
                    
                    .buttonStyle(PlainButtonStyle())
                    
                    
                    
                    Button(action: {
                        
                        showGenreSelection = true
                    }, label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 6))
                                .rotationEffect(.degrees(180),anchor: .center)
                            
                        }
                        
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
                
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
        }
    }
    
    
}

enum HomeTopRow : String, CaseIterable {
    case home = "Home"
    case tvShow = "TV Show"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre : String {
    
    case AllGenre
    case Action
    case Comedy
    case Horror
}

