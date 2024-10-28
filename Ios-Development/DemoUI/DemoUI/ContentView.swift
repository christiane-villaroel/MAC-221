//
//  ContentView.swift
//  DemoUI
//
//  Created by Christiane Villaroel on 10/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var newItem: String = ""
    @State var addItems:[String]=[]
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to the App")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(10)
                TextField("Enter your name", text: $newItem)
                    
                    .padding()
                    
                    .border(.gray, width: 10)
                    .cornerRadius(16)
                    .padding()
                Button(action:{
                    if !newItem.isEmpty{
                        addItems.append(newItem)
                        newItem=""
                    }
                }//Button
                    ){
                    Text("Add Item")
                        .padding()
                        .background(.green)
                        .foregroundStyle(.white)
                        .cornerRadius(6)
                        
                }//Add Item
                NavigationLink(destination:ItemList(items:addItems)){
                    Text("Show Items")
                        .padding(8)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(6)
                }
            }//Vstack
            .navigationTitle("Demo UI")
        }//NavView
    }
}

#Preview {
    ContentView()
}
