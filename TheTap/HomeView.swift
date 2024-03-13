    //
    //  HomeView.swift
    //  TheTap
    //
    //  Created by Gustavo Gonzalez on 3/12/24.
    //

    import SwiftUI

    struct HomeView: View {
        var body: some View {
            
            VStack(spacing: 20){
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("IMG_0096")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 6) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed

                        VStack(alignment: .leading, spacing: 20){
                            Text("Gustavo Gonzalez")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Text("IPA Enthusiast")
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 150)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom

                Text("New Fizz For Your Bubs")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            RecommendationView(index: index, imageName: "image\(index)") // Assuming
                        }
                    }
                }
                .padding()
                
                Text("Pasts Tastes")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                

                // Similarly for PastView
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            PastView(index: index, imageName: "pastImage\(index)") // Assuming image names like pastImage0, pastImage1, etc.
                        }
                    }
                }
                .padding()
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("_DSC9676")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed

                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Kevin")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Trying the new Hazy ")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                BottomMenuView()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
            .edgesIgnoringSafeArea(.bottom)
        }
    }


struct RecommendationView: View {
    let index: Int
    let imageName: String // Add this line to accept an image name
    
    var body: some View {
        VStack {
            Image(imageName) // Use the imageName to load a specific image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
           
        }
        .frame(width: 100, height: 100) // Adjusted to fit the image and text
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 5, x: 4, y: 4)
    }
}


struct PastView: View {
    let index: Int
    let imageName: String // Add this line to accept an image name
    
    var body: some View {
        VStack {
            Image(imageName) // Use the imageName to load a specific image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            
        }
        .frame(width: 100, height: 100) // Adjusted to fit the image and text
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 5, x: 4, y: 4)
    }
}






struct BottomMenuView: View {
    var body: some View {
        HStack {
            // Home Button
            Button(action: {}) {
                VStack {
                    Image(systemName: "house.fill")
                }
            }
            .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))

            
            Spacer()
            
            // Bookmark Button
            Button(action: {}) {
                VStack {
                    Image(systemName: "bookmark.fill") // Bookmark icon
                }
            }
            .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
            
            Spacer()
            
            // Add/Upload Button (Center and Prominent)
            Button(action: {}) {
                VStack {
                    Image(systemName: "plus.circle.fill") // Add/Upload icon
                        .font(.system(size: 44)) // Make it larger
                        .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
                }
            }
            .offset(y: -5) // Optionally raise it to make it stand out
            
            Spacer()
            
            // Search Button
            Button(action: {}) {
                VStack {
                    Image(systemName: "magnifyingglass")
                }
            }
            .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
            
            Spacer()
            
            // Profile Button
            Button(action: {}) {
                VStack {
                    Image(systemName: "person.fill")
                }
            }
            .foregroundColor(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255)) // Custom background color
    }
}


#Preview {
    HomeView()
}
