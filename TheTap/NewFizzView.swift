//
//  NewFizzView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/13/24.
//

import SwiftUI

struct NewFizzView: View {
    @State private var showRecommendations = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) { // Reduced spacing between VStack elements
            Button(action:{
                self.showRecommendations.toggle()
            }) {
                Text("New Fizz For Your Bubs")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.horizontal) // Apply horizontal padding only to the button for side spacing
            
            if showRecommendations {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            RecommendationView(index: index, imageName: "image\(index)")
                        }
                    }
                    .padding([.horizontal, .bottom]) // Apply horizontal and bottom padding to the ScrollView
                }
                .frame(height: 100) // Explicitly set the height to control the size
            }
        }
        .padding([.top, .leading, .trailing]) // Apply padding to the top, leading, and trailing edges only
    }
}

struct RecommendationView: View {
    let index: Int
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
            .cornerRadius(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 4, y: 4)
    }
}

#Preview {
    NewFizzView()
}

