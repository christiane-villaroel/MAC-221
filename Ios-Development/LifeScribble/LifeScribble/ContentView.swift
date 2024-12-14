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
                    Image("book")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400,height: 150)
                        .foregroundStyle(Color.blue)
                        .overlay(content: {
                            Image(systemName: "pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50,height: 50)
                                .offset(x: -10, y: -30)
                                .foregroundColor(Color.blue)
                            
                        })
                        
                }
                Text("Welcome to Life Scribble")
              /*  NavigationLink(destination: JournalList(), label: {Text("Go To Journals")})*/
            }//End VStack
            .navigationTitle("Welcome")
            .presentationBackground(Color.blue)
        }//End Nav View
    }//body
}//content

#Preview {
    ContentView()
        .environmentObject(JournalStore())
}
