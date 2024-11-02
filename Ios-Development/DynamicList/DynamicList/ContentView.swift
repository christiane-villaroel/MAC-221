//
//  ContentView.swift
//  DynamicList
//
//  Created by Christiane Villaroel on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var students: [Student] = [
        Student(name: "Alice", age: 19, course: "MAC 221", image: "grogu"),
        Student(name: "Mo", age: 20, course: "MAC 125", image: "grogu"),
        Student(name: "Smile", age: 18, course: "MAC 280", image: "grogu")
    ]
    var body: some View {
        NavigationView{
            List(students){
                student in
                NavigationLink(destination:StudentDetailsView(student: student)){
                    HStack{
                        Image(student.image)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth:2))
                            .padding()
                        VStack(alignment: .leading){
                            Text(student.name)
                                .font(.title)
                            Text(student.course)
                                .font(.title3)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(student.age) years")
                        }//End Vstack
                        .padding(.vertical,5)
                    }//End Htsack
                }//End NavLink
                .navigationTitle("Students")
            }// End List
        }//End NavView
    }//End Body
}//End ContentView

#Preview {
    ContentView()
}
