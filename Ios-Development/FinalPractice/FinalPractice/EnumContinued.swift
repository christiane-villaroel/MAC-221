//
//  EnumContinued.swift
//  FinalPractice
//
//  Created by Christiane Villaroel on 12/13/24.
//

import SwiftUI
enum Day: String, CaseIterable{
    case monday = "Mon"
    case tuesday = "Tue"
    case wednesday = "Wed"
    case thursday = "Thu"
    case friday = "Fri"
    case saturday = "Sat"
    case sunday = "Sun"
}

struct EnumContinued: View {
    @State var selectedDay: Day = .monday
    var body: some View {
        Picker("word", selection: $selectedDay){
            ForEach(Day.allCases, id: \.self){
                day in
                Text("\(day.rawValue)").tag(day)
            }// end foreach
        }// end picker
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        Text("Selected Day: \(selectedDay.rawValue)")
    }// end body
}// end EnumContinied

#Preview {
    EnumContinued()
}
