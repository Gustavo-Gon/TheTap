//
//  BottomMenuView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/13/24.
//


import SwiftUI

struct BottomMenuView: View {
    var body: some View {
        HStack {
            Spacer()
            
            // Example usage, navigate to a placeholder view. Replace PlaceholderView with your actual destination views.
            NavView(iconName: "house.fill", destination: AnyView(PlaceholderView(text: "Home")))
            
            Spacer()
            
            NavView(iconName: "bookmark.fill", destination: AnyView(PlaceholderView(text: "Bookmark")))
            
            Spacer()
            
            NavView(iconName: "plus.circle.fill", destination: AnyView(PlaceholderView(text: "Add")))
            
            Spacer()
            
            NavView(iconName: "magnifyingglass", destination: AnyView(PlaceholderView(text: "Search")))
            
            Spacer()
            
            NavView(iconName: "person.fill", destination: AnyView(PlaceholderView(text: "Profile")))
            
            Spacer()
        }

        .frame(maxWidth: .infinity)
        .background(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255)) // Custom background color
    }
}
