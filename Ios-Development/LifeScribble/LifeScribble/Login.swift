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
        VStack{
            TextField("Username",text: $username)
                .padding()
            SecureField("Password",text: $password)
                .padding()
        }//end vstack
    }
}

#Preview {
    Login()
        .environmentObject(JournalStore())
}
