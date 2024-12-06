//
//  ContentView.swift
//  Lab4
//
//  Created by Christiane Villaroel on 11/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedOption = "Morning"
    @State var options = ["Morning","Afternoon", "Evening"]
    @State var selectedDate = Date()
    @State var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    var body: some View {
        VStack {
            Text("Lab 4: Pickers & Date Pickers")
                .font(.title2)
                .padding()
            
            HStack{
                Text("Select Time of Day: \(selectedOption)")
                    .fontWeight(.bold)
                Picker("Select Time", selection: $selectedOption) {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                    }
                }
            }
           
            HStack{
                Text("Select a Date:")
                    .fontWeight(.bold)
                DatePicker("Select a Date", selection: $selectedDate,displayedComponents: .date)
                    
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                    .padding()
            }
            HStack{
                Text("selected Date \(selectedDate,formatter: dateFormatter)")
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
