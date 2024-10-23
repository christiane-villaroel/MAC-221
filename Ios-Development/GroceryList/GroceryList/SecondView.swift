//
//  SecondView.swift
//  GroceryList
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI
//Question?:
/*
 
 */
struct SecondView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing:20){
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            NavigationLink(destination: ThirdView()){
                Text("Go To Login")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                
            }//NavLink
        }//End of Vstack
    }//End of Body
}//End of secondView

#Preview {
    SecondView()
}
