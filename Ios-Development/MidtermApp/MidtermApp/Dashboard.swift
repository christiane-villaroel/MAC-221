//
//  Dashboard.swift
//  MidtermApp
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct Dashboard: View {
    @State var user: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome \(user)")
            }
            .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    Dashboard()
}
