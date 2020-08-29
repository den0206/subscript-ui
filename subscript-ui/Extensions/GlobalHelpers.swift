//
//  GlobalHelpers.swift
//  subscript-ui
//
//  Created by 酒井ゆうき on 2020/08/28.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, categories: ["excitein","Dystopian", "Wifi"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Trvelars", thumbnailUrl: URL(string: "https://picsum.photos/200/301")!, categories: ["excitein","Dystopian", "Wifi"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "cominuty", thumbnailUrl: URL(string: "https://picsum.photos/200/302")!, categories: ["excitein","Dystopian", "Wifi"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "StarWars", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!, categories: ["excitein","Dystopian", "Wifi"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "milk", thumbnailUrl: URL(string: "https://picsum.photos/200/304")!, categories: ["excitein","Dystopian", "Wifi"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailUrl: URL(string: "https://picsum.photos/200/305")!, categories: ["excitein","Dystopian", "Wifi"])


let exampleMovies : [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

extension LinearGradient {
    
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top,endPoint: .bottom)
}
