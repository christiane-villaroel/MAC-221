//
//  SixQuestionsView.swift
//  MidtermApp
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct SixQuestionsView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action:{}){
                    Text("QUESTION #1")
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                }//End Button 1
                Button(action:{}){
                    HStack{
                        Image(systemName:"book.fill")
                        Text("Question #2")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                }//End Button 2
            }//End Hstack
            HStack{
                Button(action:{
                    print("Clicked!")
                }){
                    Text("Button #3")
                        .padding()
                        .background(Color.secondary)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                }//End Button
                .shadow(color:.black,radius:10,x:0,y:0)
                Button(action: {print("Button #4")}){
                    ZStack{
                        Circle()
                            .frame(width:100)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        Text("Button #4")
                            .foregroundStyle(.white)
                    }//End Zstack
                }//End Button
                Button(action:{print("Button #5: Overlay")},label: {
                    Text("Button #5")
                        .padding()
                        .background(Color.red)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                        .overlay(Text("Overlay").font(.largeTitle).foregroundColor(.white))
                        
                })//End Button
            }//End Hstack
        }//End VStack
    }//End body
}//End View

#Preview {
    SixQuestionsView()
}
