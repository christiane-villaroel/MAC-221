//
//  ButtonLecture.swift
//  UI-images
//
//  Created by user266713 on 9/28/24.
//

import SwiftUI

struct ButtonLecture: View {
    var body: some View {
        VStack{
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
            }
            
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
            }
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .border(Color.purple,width: 5)
            }
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .padding(10)
                    .border(Color.purple,width: 5)
            }
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .fontWeight(.bold)
                    .font(.title)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .padding()
                    
            }
            Button(action: {
                print("Hello MAC221 Students")
            }){
                Text("Hello All")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.red,lineWidth: 5))
                    
            }
            Button(action:{
                print("Hello MAC221")
            }){
                Image(systemName: "trash")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                
            }
            Button(action:{
                print("Hello MAC221")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.largeTitle)

                       
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(40)
            }
        }
    }
}

#Preview {
    ButtonLecture()
}
