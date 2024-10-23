//
//  MidtermPractice.swift
//  Buttons
//
//  Created by Christiane Villaroel on 10/22/24.
//

import SwiftUI

struct MidtermPractice: View {
    var body: some View {
        VStack(spacing:15){
            //Write SwiftUI code to create a button with rounded corners and a blue background.
            Button(action:{},label: {
                Text("Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            // Explain how you would add both text and an image inside a SwiftUI button.
            Button(action:{
                print("Button Two Tapped")
            }){
                HStack{
                    Text("Button Two")
                        .font(.subheadline)
                    Image("grogu")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .cornerRadius(20)
                }//HStack
                .padding(8)
                .foregroundStyle(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            // Create a button that prints "Clicked!" when pressed. Make sure the button has padding and a shadow.
            Button(action:{
                print("Button Three Tapped")
            }){
                Text("Button Three")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .shadow(color: .black, radius: 10, x: 0, y: 10)
            //Write code for a button with a gradient background and a circular shape.
            Button(action:{},label:{
                
                ZStack{
                    Circle()
                        .frame(width:140)
                        .foregroundStyle(LinearGradient(gradient:
                                                    Gradient(colors: [Color.red,Color.green]),
                                                   startPoint: .leading,
                                                   endPoint: .trailing))
                        
                    Text("Gradient Button")
                        .foregroundStyle(.white)
                        .font(.headline)
                        
                }
                
            })
    //Create a button with the .overlay() modifier to display a second text view on top of the button.

            Button(action:{},label:{
                Text("Button Overlay")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
                    .overlay(Text("Overlay Text").foregroundStyle(.white).background(Color.red))
            })
            
                
        }
    }
}

#Preview {
    MidtermPractice()
}
