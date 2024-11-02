//
//  Student.swift
//  DynamicList
//
//  Created by Christiane Villaroel on 11/2/24.
//

import Foundation
struct Student :Identifiable{
    let id = UUID()//
    let name: String
    let age: Int
    let course:String
    let image: String
}
/*Identifiable: protocl followed by a struct, in order for a struct to ID an ID
 
 */
