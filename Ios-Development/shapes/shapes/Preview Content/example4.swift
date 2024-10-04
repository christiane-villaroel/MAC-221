//
//  example4.swift
//  shapes
//
//  Created by user266713 on 9/21/24.
//

import SwiftUI

struct example4: View {
    var body: some View {

            VStack{
                Text("ZStack")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Layering & Alignment")
                ZStack{
                    Circle()
                        .frame(height: 200)
                        .foregroundStyle(.blue)
                    Capsule()
                        .frame(width:150,height:50)
                        .foregroundStyle(.white.opacity(0.4))
                    Text("Hello World!")
                        .foregroundStyle(.white)
                        
                    
                }
                
            }
        }
}


#Preview {
    example4()
}
