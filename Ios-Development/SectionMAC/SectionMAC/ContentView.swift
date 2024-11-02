//
//  ContentView.swift
//  SectionMAC
//
//  Created by Christiane Villaroel on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email=""
    @State private var phoneNumber=""
    
    var body: some View {
        Form{
            Section(header:
                        Text("Personal Information")
                            .font(.headline)
                            .foregroundStyle(Color.black)
                            .padding()
                    
            ){
                TextField("name",text:$name)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                TextField("email",text:$email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                TextField("phone",text:$phoneNumber)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
            }//end section
            Section(header:
                        Text("Actions")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                
            ){
                Button("Save Contact"){
                    //logic
                }//End Button
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .shadow(radius:5)
                Button("Delete Contact"){
                    //Logic
                }
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .shadow(radius:5)
            }
        }//end form
    }//End View
}//End Content View

#Preview {
    ContentView()
}
