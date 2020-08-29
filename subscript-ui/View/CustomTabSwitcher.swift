//
//  CustomTabSwitcher.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/29.
//

import SwiftUI


enum CustomTab : String {
    case episode  = "Episode"
    case trailers = "Trailers & More"
    case morelike = "More Like"
}




struct CustomTabSwitcher: View {
    
    @State private var currentTab :  CustomTab = .episode
    
    //MARK: - Property
    
    var tabs : [CustomTab]
    
    var body: some View {
 
        VStack {
            //// picker
            ScrollView(.horizontal, showsIndicators: false) {

                HStack(spacing : 20) {
                    ForEach(tabs, id : \.self) { tab in
                        VStack {
                            /// red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                            
                        }
                    }
                }
            }
            
            /// Views
            switch currentTab {
            
            case .episode :
                Text("episode")
            case .trailers :
                Text("Trailers")
            case .morelike :
                Text("more")
           
            }
          
        }
        .foregroundColor(.white)
        
    }
}

extension CustomTabSwitcher {
    
    func widthForTab(_ tab : CustomTab) -> CGFloat{
        
        let string = tab.rawValue
        
        return string.widthOfString(font: .systemFont(ofSize: 16, weight: .bold))
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episode,.trailers, .morelike])

        }
    }
}
