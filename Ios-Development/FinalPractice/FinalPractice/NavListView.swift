//
//  NavListView.swift
//  FinalPractice
//
//  Created by Christiane Villaroel on 12/13/24.
//

import SwiftUI

struct NavListView: View {
    let categories = ["Category 1", " cateogry 2", "Category 3"]
    var body: some View {
        NavigationView{
            List(categories, id: \.self){
                category in
                NavigationLink(destination: Text())
            }
        }
    }
}

#Preview {
    NavListView()
}
