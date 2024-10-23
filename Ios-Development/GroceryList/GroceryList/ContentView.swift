//
//  ContentView.swift
//  GroceryList
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
                Text("Welcome to the MAC 221 App")
                    .font(.title)
                    .padding()
                NavigationLink(destination: SecondView()){
                    Text("Go To Login")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }//End NavLink
            }//END Vstack
            .navigationTitle("Home")
        }// End NavView
    }// End Body
}// End Struct

#Preview {
    ContentView()
}
