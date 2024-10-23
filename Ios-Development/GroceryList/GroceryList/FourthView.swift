//
//  FourthView.swift
//  GroceryList
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI

struct FourthView: View {
    @State var selectedItems: [String] = []
    var body: some View {
       List(selectedItems, id: \.self){i in Text(i)}
            .navigationTitle("Saved Items")
    }
      
}

#Preview {
    FourthView()
}
