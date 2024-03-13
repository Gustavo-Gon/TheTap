//
//  NavView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/13/24.
//

import SwiftUI


struct NavView: View {
    var iconName: String
    var destination: AnyView
    
    var body: some View {
        NavigationLink(destination: destination) {
            Image(systemName: iconName)
                .font(.system(size: 20))
                .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
                .frame(width: 44, height: 44)
        }
    }
}


struct PlaceholderView: View {
    let text: String
    
    var body: some View {
        Text("Home")
        Text("Bookmark")
        Text("add")
        Text("Search")
        Text("Profile")
    }
}
