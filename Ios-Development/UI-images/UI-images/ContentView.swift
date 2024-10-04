//
//  ContentView.swift
//  UI-images
//
//  Created by user266713 on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ZStack{
            Color.yellow
                .ignoresSafeArea()
           
            VStack{
                
                    HStack{
                        Image("grogu")
                            .resizable()
                            .scaledToFit() //fits to screen
                            //.aspectRatio(contentMode: .fit) // similar to scaledTofit()
                            //.scaledToFill() //expands picture
                            //.ignoresSafeArea()// same ass edgeingoresafearea(all)
                            .blur(radius: 5)
                            .frame(width: 200,height:   200)//3rd param(alignment) by DEFAULT always center, so no need to input 3rd arg
                            .clipped()//mods clip of image to ft size of frame exactly
                            //any part of img outside frame will be cropped
                        // Newer xcode will display two image horizontally
                        //Older versions will create two separate image (iphone sims)
                        // need to place both images in Hstack
                        Image("grogu")
                            .resizable()
                            .scaledToFit() //fits to screen
                            //.aspectRatio(contentMode: .fit) // similar to scaledTofit()
                            //.scaledToFill() //expands picture
                            //.ignoresSafeArea()// same ass edgeingoresafearea(all)
                            .shadow(color:.white, radius: 40, x:20, y:20)
                            .frame(width: 200,height:   200)//3rd param(alignment) by DEFAULT always center, so no need to input 3rd arg
                            .clipped()//mods clip of image to ft size of frame exactly
                                        //any part of img outside frame will be cropped
                    }
                    
                HStack(spacing: 80){
                    Text("Grogu 1")
                         .foregroundStyle(.black)
                    Text("Grogu 2")

                        
                }
            }

        }
    }
}

#Preview{
    ContentView()
}

