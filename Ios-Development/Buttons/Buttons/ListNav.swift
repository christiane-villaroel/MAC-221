//
//  ListNav.swift
//  Buttons
//
//  Created by Christiane Villaroel on 10/19/24.
//

import SwiftUI

struct ListNav: View {
    let items = ["Item 1", "Item 2","Item 3"  ]
    let secondItems = (1...100).map{"Item \($0)"}
    var body: some View {
        NavigationView{
            List{
               /* NavigationLink(destination: Text("Details for Item 1")){
                    Text("Item 1")
                }
                NavigationLink(destination: Text("Details for Item 2")){
                    Text("Item 2")
                }
                NavigationLink(destination:Text("Details for Item 3")){
                    Text("Item 3")
                }*/
                ForEach(secondItems,id:\.self){
                    i in
                    NavigationLink(destination: Text("Details for \(i)")){
                        Text(i)
                    }
                }
                
            }// END List
            .navigationTitle("MAC 221 List View")
        }//END NavView
    }
}

#Preview {
    ListNav()
}
