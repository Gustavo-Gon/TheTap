    //
    //  HomeView.swift
    //  TheTap
    //
    //  Created by Gustavo Gonzalez on 3/12/24.
    //

    import SwiftUI

    struct HomeView: View {

        
        var body: some View {
            
            VStack(){
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("gus")
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
                
                
                NewFizzView()
                    
                
                PastTastesView()
                    
                    
                FriendView()
                
                
                Spacer()
                
                BottomMenuView()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 243 / 255, green: 241 / 255, blue: 224 / 255))
            .edgesIgnoringSafeArea(.bottom)
        }
    }









#Preview {
    HomeView()
}
