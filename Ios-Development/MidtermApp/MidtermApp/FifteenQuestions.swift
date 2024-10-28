//
//  FifteenQuestions.swift
//  MidtermApp
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct FifteenQuestions: View {
    var body: some View {
        VStack(spacing: 30) { // Stack for organizing examples vertically
                    Text("HStack with 10 spacing:")
                        .font(.headline)
                    
                    HStack(spacing: 10) { // 10 points of space between each view
                        Color.red.frame(width: 50, height: 50)
                        Color.green.frame(width: 50, height: 50)
                        Color.blue.frame(width: 50, height: 50)
                    }
                    
                    Text("HStack with 30 spacing:")
                        .font(.headline)
                    
                    HStack(spacing: 30) { // 30 points of space between each view
                        Color.red.frame(width: 50, height: 50)
                        Color.green.frame(width: 50, height: 50)
                        Color.blue.frame(width: 50, height: 50)
                    }
                    
                    Text("HStack with 0 spacing:")
                        .font(.headline)
                    
                    HStack(spacing: 0) { // No space between each view
                        Color.red.frame(width: 50, height: 50)
                        Color.green.frame(width: 50, height: 50)
                        Color.blue.frame(width: 50, height: 50)
                    }
                }
                .padding()
    }
}

#Preview {
    FifteenQuestions()
}
