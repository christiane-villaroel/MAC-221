//
//  SmileyFace.swift
//  UI-images
//
//  Created by user266713 on 10/2/24.
//

import SwiftUI

struct SmileyFace: View {
    var body: some View {
        ZStack{
            Color
                .blue
                .ignoresSafeArea()
            ZStack{
                Circle()
                    .frame(width:300)
                VStack{
                    HStack(spacing:50){
                        Circle()
                            .frame(width:50)
                            .foregroundColor(.white)
                    
                        Circle()
                            .frame(width:50)
                            .foregroundColor(.white)
                    }
                    .padding()
                    Rectangle()
                        .frame(width:100,height: 10)
                        .foregroundColor(.white)
                }
            }
            
        }
    }
}

#Preview {
    SmileyFace()
}
