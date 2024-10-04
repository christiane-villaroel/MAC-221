//
//  practice-1.swift
//  UI-images
//
//  Created by user266713 on 9/28/24.
//

import SwiftUI

struct practice_1: View {
    var body: some View {
        HStack{
            Image(systemName: "moon.stars.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .background(.black)
                .clipShape(Circle())
            Image(systemName: "wind.snow")
                .renderingMode(.original)
                .font(.largeTitle)
                .background(.black)
                .clipShape(Circle())
            Image(systemName: "cloud")
                .renderingMode(.original)
                .font(.largeTitle)
                .background(.black)
                .background(.black)
                .clipShape(Circle())
                

        }
    }
}

#Preview {
    practice_1()
}
