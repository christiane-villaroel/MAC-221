//
//  lab-1.swift
//  shapes
//
//  Created by user266713 on 9/21/24.
//

import SwiftUI

struct lab_1: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Choose Your Subscription")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                HStack{
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height: 150)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        VStack{
                            Text("Basic")
                                .fontWeight(.bold)
                            Text("$9")
                            Text("per month")
                                .font(.subheadline)
                         }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height: 150)
                            .foregroundColor(.orange)
                            .cornerRadius(10)
                        VStack{
                            Text("Gold")
                                .fontWeight(.bold)
                            Text("$49")
                            Text("per month")
                         }
                    }
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 300,height: 150)
                        .cornerRadius(10)
                    VStack{
                        Text("Titanium")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("$99")
                            .foregroundColor(.white)
                        Text("per month")
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 300,height: 75)
                        .cornerRadius(10)
                    VStack{
                        Text("Subscribe")
                            .foregroundColor(.white)
                        
                    }
                        
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 300,height: 75)
                        .cornerRadius(10)
                    VStack{
                        Text("Maybe next time")
                            .foregroundColor(.white)
                        
                    }
                        
                }
                
                
            }
        }
    }
}

#Preview {
    lab_1()
}
