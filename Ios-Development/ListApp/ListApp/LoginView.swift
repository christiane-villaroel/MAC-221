//
//  LoginView.swift
//  ListApp
//
//  Created by Christiane Villaroel on 10/23/24.
//

import SwiftUI

struct LoginView: View {
    @State  var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TextField(text:$username, label:{Text("Username").foregroundStyle(.black)})
                .textFieldStyle(.roundedBorder)
                .foregroundStyle(Color.black)
                .padding()
            SecureField("Password",text:$password)
                .textFieldStyle(.roundedBorder)
                .padding()
            NavigationLink(destination: Text("main view"), label:{
                Text("Login")
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .cornerRadius(5)
            
            })
        }//End Vstack
    }
}

#Preview {
    LoginView()
}
