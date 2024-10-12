//
//  ContentView.swift
//  Lab-1
//
//  Created by Christiane Villaroel on 10/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Choose your Subscription")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.title)
                HStack{
                   
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height:150)
                            .foregroundStyle(Color.white)
                            .clipShape(.rect(cornerRadius: 10))
                        VStack{
                            Text("Basic")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                            Text("$9")
                            Text("per month")
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height:150)
                            .foregroundStyle(Color.yellow)
                            .clipShape(.rect(cornerRadius: 10))
                        VStack{
                            Text("Gold")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                            Text("$49")
                            Text("per month")
                        }
                    }
                }
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 150)
                        .foregroundStyle(Color.gray)
                        .clipShape(.rect(cornerRadius: 10))
                    VStack{
                        Text("Titanium")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("$99")
                            .foregroundColor(.white)
                        Text("per month")
                            .foregroundColor(.white)
                    }
                    
                }
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 75)
                        .foregroundStyle(Color.blue)
                        .clipShape(.rect(cornerRadius: 10))
                    VStack{
                        Text("Subscribe")
                            .foregroundColor(.white)
                        
                    }
                    
                }
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 75)
                        .foregroundStyle(Color.red)
                        .clipShape(.rect(cornerRadius: 10))
                    VStack{
                        Text("Maybe next time")
                            .foregroundColor(.white)
                        
                    }
                    
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
