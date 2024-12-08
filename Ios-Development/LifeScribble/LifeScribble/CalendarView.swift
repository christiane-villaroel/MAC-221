//
//  CalendarView.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI


struct CalendarView: View {
    @EnvironmentObject var JournalStore:JournalStore
    @State private var selectedDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack{
           
            
            List{
                ForEach(JournalStore.entries.filter{ Calendar.current.isDate($0.date, inSameDayAs: selectedDate)}){
                    entry in
                    Text("\(entry.title)")
                }
                
            }

        }//end vstack
    }//end body
}//end calendarView

#Preview {
    CalendarView()
        .environmentObject(JournalStore())
}
