//
//  NavView.swift
//  Buttons
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination:
                    Text("MAC221 Second View")){
                    Image("grogu")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 159, height: 150)
                    .scaledToFit()
                    .cornerRadius(40)
                    .clipShape(Circle())
                    
            }// End of NavLink
                    .navigationTitle("MAC221 Swift Nav Title")
                    
        }
    }
}

#Preview {
    NavView()
}
