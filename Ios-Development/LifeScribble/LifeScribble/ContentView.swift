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
                ZStack{
                    Color.green
                        .ignoresSafeArea()
                    VStack{
                        Text("Welcome to Life Scribble")
                            .font(.title)
                            .fontWeight(.bold)
                        
                            Image("notebook")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300,height: 150)
                                //.backgroundStyle(Color.myGreen)
                       
                        NavigationLink(destination: Login(), label: {
                            Text("Login")
                                .fontWeight(.semibold)
                                .padding(10)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 0, y: 10)
                            
                        })
                    }//End VStack
                 
                
                    .foregroundColor(.myGreen)
                    
                }//end zstack
            }//End Nav View
            
            
          
    
        
    }//body
}//content

#Preview {
    ContentView()
        .environmentObject(JournalStore())
}
