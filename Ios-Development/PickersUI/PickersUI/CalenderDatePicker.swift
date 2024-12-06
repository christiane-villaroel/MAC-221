//
//  CalenderDatePicker.swift
//  PickersUI
//
//  Created by Christiane Villaroel on 11/16/24.
//

import SwiftUI

struct CalenderDatePicker: View {
    @State private var selectedDate = Date()
    
    
    var body: some View {
        VStack{
            Text("Selected Date:\(selectedDate, formatter: dateFormatter)")
                .foregroundStyle(.blue)
                .padding()
            DatePicker("Select a Date", selection: $selectedDate,displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
                .labelsHidden()
                .padding()
        }
    }
     @State private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
         formatter.dateStyle = .full
        return formatter
    }()
    
}

#Preview {
    CalenderDatePicker()
}
