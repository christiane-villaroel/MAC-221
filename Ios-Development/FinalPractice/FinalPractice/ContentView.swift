//
//  ContentView.swift
//  FinalPractice
//
//  Created by Christiane Villaroel on 12/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scale = 1.0
    @State private var angle = 0.0
    @State private var borderThickness = 1.0
    @State private var isEnabled = false
    @State private var showWelcome = false
    var body: some View {
        VStack {
            Form{
                Section(header: Text("Animation Buttons")){
                    Button(action:{
                        scale += 1
                    }){
                        Text("Pess Here")
                            .padding()
                            .clipShape(Rectangle())
                            .background(Color.green)
                            .cornerRadius(8)
                            .foregroundStyle(Color.white)
                        
                        
                    }// end button
                    .scaleEffect(scale)
                    .animation(.easeOut)// implicit animation for xcode 11
                        
                    Button("Button 2"){
                        angle += 30
                        borderThickness += 1
                    }// end button
                    .padding()
                    .border(.red, width: borderThickness)
                    .rotationEffect(.degrees(angle))
                    .animation(.easeIn, value: angle)
                    
                    Button("Press Me"){
                        isEnabled.toggle()
                    }// end button
                    .foregroundStyle(Color.white)
                    .frame(width:50, height:50)
                    .padding()
                    .background(isEnabled ? .green : .red)
                    .animation(nil, value: isEnabled)
                    Toggle("Toggle Label", isOn: $showWelcome)
                    if showWelcome {
                        Text("Welcome!")
                        }
                    
                }// end section
                
                
            }// end form
            
        }// end vstack
       
    }// View
}

#Preview {
    ContentView()
}
