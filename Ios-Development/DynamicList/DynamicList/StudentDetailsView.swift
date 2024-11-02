//
//  StudentDetailsView.swift
//  DynamicList
//
//  Created by Christiane Villaroel on 11/2/24.
//

import SwiftUI

struct StudentDetailsView: View {
     @State var student: Student
        var body: some View {
            VStack{
                Image(student.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(style: StrokeStyle(lineWidth: 4)))
                    .shadow(radius: 10)
                    .padding()
                Text(student.name)
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Age: \(student.age)")
                    .font(.title3)
                Text("Enrolled in: \(student.course)")
                Spacer()
            }//End 2nd Vstack
    }//End View
}//end StudentDetailsView

#Preview {
    StudentDetailsView(student: Student(name: "Christiane", age: 29, course: "MAC 221", image: "grogu"))
}
