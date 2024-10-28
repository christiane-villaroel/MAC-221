//
//  PracticeView.swift
//  GroceryList
//
//  Created by Christiane Villaroel on 10/25/24.
//

import SwiftUI

struct PracticeView: View {
    @State  var items : [Int] = [1,2,3,4,5]
    var body: some View {
        List{
            ForEach(items, id:\.self){
                index in
                NavigationLink(destination: {
                    Text("Detail for \(index)")
                        .font(.title)
                        .bold()
                        .padding()
                }){
                    Text("Item \(index)")
                }
            }
        }
     
        }// End Body
    }//End PracticeView


#Preview {
    PracticeView()
}
