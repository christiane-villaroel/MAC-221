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
                HStack{
                    Circle()
                        .frame(width:20)
                        .foregroundColor(.white)
                
                    Circle()
                        .frame(width:20)
                        .foregroundColor(.white)
                    
                }
            }
            
        }
    }
}

#Preview {
    SmileyFace()
}
