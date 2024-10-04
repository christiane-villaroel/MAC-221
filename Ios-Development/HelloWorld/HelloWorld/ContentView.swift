//
//  ContentView.swift
//  HelloWorld
//
//  Created by user266713 on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:10){
            Text("VStack").font(.title)
            Text("Spacing & Alignment").font(.subheadline)
            VStack{
                Text("Hello World!")
                    .frame(width:.infinity)
                    .foregroundColor(.white)
                    .background(.orange)
            }
        }
    }
}

#Preview {
    ContentView()
}
