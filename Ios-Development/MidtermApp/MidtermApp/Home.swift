//
//  Home.swift
//  MidtermApp
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: DetailView(), label:{
                    Text("Go To Details")
                })// navlink
                .toolbar{
                    Button("Save"){
                        print("Saved")
                    }
                }
            }// vstack
            .navigationTitle("Home")
        }
        
    }
}

#Preview {
    Home()
}
