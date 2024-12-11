//
//  CalendarView.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/10/24.
//

import SwiftUI
import MijickCalendarView


struct CalendarView: View {
    @State private var selectedDate: Date? = nil
    @State private var selectedRange: MDateRange? = .init()
    
    var body: some View {
        VStack{
             
        }
    }
}

#Preview {
    CalendarView()
        .environmentObject(JournalStore())
}
