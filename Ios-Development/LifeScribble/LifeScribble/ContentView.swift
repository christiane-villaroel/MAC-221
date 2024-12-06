//
//  ContentView.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 10) {
                HStack{
                    Image(systemName: "book.closed.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 100)
                    Image(systemName: "pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                        .rotationEffect(.degrees(-46))
                }
                Text("Welcome to Life Scribble")
                NavigationLink(destination: Login(), label: {Text("Go To Login")})
            }//End VStack
            .navigationTitle("Welcome")
        }//End Nav View
    }//body
}//content

#Preview {
    ContentView()
}
