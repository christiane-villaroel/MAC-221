//
//  contactExample.swift
//  shapes
//
//  Created by user266713 on 9/21/24.
//

import SwiftUI

struct contactExample: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width:170)
                    .foregroundStyle(.orange)
                Text("JD")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            Text("John Doe")
                .font(.title2)
            Text("Swift UI Engineer")
            HStack{
                ZStack{
                    Rectangle()
                        .frame(width:100,height: 30)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                    Text("Message")
                        .foregroundColor(.white)
                }
                ZStack{
                    Rectangle()
                        .frame(width:100,height: 30)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                    Text("Message")
                        .foregroundColor(.white)
                }


            }
        }
    }
}

#Preview {
    contactExample()
}
