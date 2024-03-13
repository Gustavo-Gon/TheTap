//
//  ContentView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/11/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            
            Text("The Tap")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.orange)
            // Need to change color of thext to gradiant 
                
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255)) // Using RGB values for #91B0AE
    }

}




#Preview {
    SplashView()
}
