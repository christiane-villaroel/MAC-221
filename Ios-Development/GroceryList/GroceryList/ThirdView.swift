//
//  ThirdView.swift
//  GroceryList
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI

struct ThirdView: View {
    @State var selectedItems: [String] = []
    @State private var items: [String] = ["Apple", "Banana","Orange","Grapes"]
    var body: some View {
        List{
            ForEach(items,id: \.self){
                i in
                Button(action:{
                    if selectedItems.contains(i){
                        selectedItems.removeAll{$0 == i}
                    }else{
                        selectedItems.append(i)
                    }
                }){
                    HStack{
                        Text("\(i)")
                        Spacer()
                        if selectedItems.contains(i){
                            Image(systemName: "checkmark")
                                .foregroundStyle(Color.green)
                        }
                    }//end of Hstack
                }//Button End
                
            }// End Foreach
        }// End of List
        .navigationTitle("Selected Items")
        .listStyle(GroupedListStyle())
       
        .toolbar{
            NavigationLink(destination: FourthView(selectedItems: selectedItems)){
                Text("Save")
            }
        }
    }// End of Body
}// End of ThirdView Struct

#Preview {
    ThirdView()
}
