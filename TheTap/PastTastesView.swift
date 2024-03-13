//
//  PastTastesView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/13/24.
//

import SwiftUI

struct PastTastesView: View {
    @State private var showPastTastes = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) { // Control the spacing between the button and the ScrollView
            Button(action: {
                self.showPastTastes.toggle()
            }) {
                Text("Pasts Tastes")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.horizontal) // Apply horizontal padding to the button
            
            if showPastTastes {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            PastView(index: index, imageName: "pastImage\(index)")
                        }
                    }
                    .padding([.horizontal, .bottom]) // Apply padding to the ScrollView
                }
                .frame(height: 100) // Control the height of the ScrollView
            }
        }
        .padding([.top, .leading, .trailing]) // Apply padding to the top, leading, and trailing edges of the VStack
    }
}

struct PastView: View {
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
    PastTastesView()
}
