//
//  ContentView.swift
//  shapes
//
//  Created by user266713 on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("HStack").font(.title).fontWeight(.bold)
            Text("Spacing & Alignment")
            HStack(spacing: 10){
                Circle()
                    .frame(width: 60).foregroundStyle(.blue)
                Rectangle()
                    .frame(width:60,height: 60)
                    .foregroundStyle(.yellow)
                Capsule()
                    .frame(width:100, height:60)
                    .foregroundStyle(.orange)
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
