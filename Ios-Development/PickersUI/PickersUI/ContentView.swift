//
//  ContentView.swift
//  PickersUI
//
//  Created by Christiane Villaroel on 11/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var option = "1"
    @State var ageOption = "25"
    @State var courses = ["MAC 221", "MAC 109", "MAC 272", "MAC 172"]
    @State var selectedCourse = "MAC 109"
    var body: some View {
        VStack{
            Text("You selected Option \(option)")
            HStack{
                Text("Age:\(ageOption)")
                    
            }//Hstack
            /* Picker(
                  selection:$selectedCourse,
                   label:Text("Course Options"),
                   content:
                    {
                        ForEach($courses, id\.self){ course in
                            Text("\(course)")
                                .tag("\(course)")
                }
            }
            )*/
            
        }
        
    }// End body
}// end struct

#Preview {
    ContentView()
}
