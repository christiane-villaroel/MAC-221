//
//  ItemList.swift
//  DemoUI
//
//  Created by Christiane Villaroel on 10/26/24.
//

import SwiftUI

struct ItemList: View {
    
    @State var items : [String] = []
    
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(items,id: \.self) { item in
                    Text("\(item)")
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }//forEach
            }//List
        }
        .navigationTitle("Item List")
        .navigationBarTitleDisplayMode(.inline)
    }//Body
}//View

#Preview {
    ItemList()
}
