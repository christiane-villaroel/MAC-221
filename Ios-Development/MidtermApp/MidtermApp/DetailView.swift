//
//  DetailView.swift
//  MidtermApp
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct DetailView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Text("Detail View Login")
                .font(.title2)
            TextField("Username",text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password",text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            NavigationLink(destination: Dashboard(user:username)){
                Text("Login")
            }
        }
    }
}

#Preview {
    DetailView()
}
