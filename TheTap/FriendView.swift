//
//  FriendView.swift
//  TheTap
//
//  Created by Gustavo Gonzalez on 3/13/24.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        Spacer()
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack(spacing: 20){
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("kevin")
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
                
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("jason")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Jason")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("This brew slaps")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("lex")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Lexi")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Drinking my Favorite cider!")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("Chris")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Chris")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("This 9.5% aint that strong")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("Sal")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Chris")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Not a fan of this sour...")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                
                VStack(alignment: .leading){
                    HStack(spacing: 20){
                        Image("bert")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle()) // Ensures the image is clipped to a circle before applying the border
                            .overlay(
                                Circle().stroke(Color(red: 145 / 255, green: 176 / 255, blue: 174 / 255), lineWidth: 5) // Adjust lineWidth for thickness
                            )
                            .cornerRadius(100) // This is redundant with clipShape(Circle()) and can be removed
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Bert")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Cant go wrong with a classic")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(15.0)
                .shadow(color: .gray, radius: 5, x: 0, y: 5) // Shadow applied at the bottom
                
                
                
            }
            .padding(.top)
        }
    }
}






#Preview {
    FriendView()
}
