//
//  ContentView.swift
//  ListApp
//
//  Created by Christiane Villaroel on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: LoginView(), label: {
                    VStack{
                        Image(systemName: "book.circle.fill")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.green)
                        Text("Welcome to ListApp")
                            .font(.title)
                            
                        
                    }
                })
            }
            .navigationBarTitle("Home")
            
                        
            
        }
    }
}

#Preview {
    ContentView()
}
