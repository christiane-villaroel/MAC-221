//
//  ContentView.swift
//  Buttons
//
//  Created by Christiane Villaroel on 10/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var isTapped = false
    @State private var dayTime = false
   
    var body: some View {
        VStack{
            Button(action:{
                print("Tapped")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Button")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
                
            }
            Button("Show Detais"){
                showDetails.toggle()
                
            }
            .padding()
            .background(Color.green)
            .foregroundStyle(Color.white)
            .font(.title)
            .cornerRadius(40)
            if showDetails{
                Text("You should enjoy swiftUI")
                    .font(.largeTitle)
            }
            Button{print("Button Pressed")} label: {
                Text("Press Me")
                    .padding(15)
            }
            .foregroundStyle(Color.white)
            .background(Color.blue)
            .contentShape(Rectangle())
            
            Button{
                isTapped.toggle()
            }label:{
                Text("Tap ME!!")
                    .padding()
            }
            .background(isTapped ? Color.blue : Color.red)
            .foregroundStyle(Color.white)
            .font(.title)
            Button{
                dayTime.toggle()
            }label:{
                HStack{
                    Image(systemName: dayTime ? "sun.max.fill":"moon.fill")
                        .font(.title)
                        .foregroundStyle(Color.yellow)
                    Text(dayTime ? "Sun":"Moon")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
                .padding()
                .background(dayTime ?Color.blue:Color.black)  .cornerRadius(10)
                
                
               
               
            }
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
