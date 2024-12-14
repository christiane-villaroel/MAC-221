//
//  Login.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI

struct Login: View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
            NavigationView{
                ZStack{
                    Color.green
                        .ignoresSafeArea()
                    VStack{
                        Text("Login")
                            .font(.title)
                            .fontWeight(.semibold)
                            .backgroundStyle(Color.white)
                        Image("notebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300,height: 150)
                            .backgroundStyle(Color.myGreen)
                        
                        TextField("Username",text: $username)
                            .padding()
                            .overlay{}
                        SecureField("Password",text: $password)
                            .padding()
                        
                    }
                        
                }
            }// navigation view
    }// end view
}

#Preview {
    Login()
        .environmentObject(JournalStore())
}
