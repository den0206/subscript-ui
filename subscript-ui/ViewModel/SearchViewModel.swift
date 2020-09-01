//
//  SearchViewModel.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/09/01.
//

import Foundation
import SwiftUI

class SearchViewModel : ObservableObject {
    @Published var isLoading : Bool = false
    
    @Published var viewState : ViewState = ViewState.ready
    @Published var popularMoview : [Movie] = []
    @Published var searchResult : [Movie] = []
    
    @Published var isShowingPoplarMovie : Bool = true
    
    public func updateSearchText(text : String) {
        setViewState(state: .loading)
        
        getSearchResults(text: text)
    }
    
    private func getPopularMovie() {
        
    }
    
    private func getSearchResults(text : String) {
        
    }
    private func setViewState(state : ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            
            self.isLoading = state == .loading
        }
    }
}


enum ViewState {
    case empty
    case loading
    case ready
    case error
}
