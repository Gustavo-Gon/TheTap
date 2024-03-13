//
//  TheTapApp.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/11/24.
//

import SwiftUI

@main
struct TheTapApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct ContentView: View {
    @State private var isShowingSplash = true
    
    var body: some View {
        Group {
            if isShowingSplash {
                SplashView()
            } else {
                HomeView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Adjust the delay here
                withAnimation {
                    isShowingSplash = false
                }
            }
        }
    }
}
