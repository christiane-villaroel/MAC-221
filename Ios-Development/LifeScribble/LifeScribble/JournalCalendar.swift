//
//  JournalCalendar.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/10/24.
//

import SwiftUI

struct JournalCalendar: View {
    @EnvironmentObject var JournalStore: JournalStore
    @State private var dateSelected : DateComponents?
    @State private var displayEntries = false
    var body: some View {
        NavigationStack {
            ScrollView {
                CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture),journalStore: JournalStore, dateSelected: $dateSelected, displayEntries: $displayEntries)
                
            }
                .navigationBarTitle("Journal Calendar")
        }
    }
}

#Preview {
    JournalCalendar()
        .environmentObject(JournalStore(preview: true))
}
