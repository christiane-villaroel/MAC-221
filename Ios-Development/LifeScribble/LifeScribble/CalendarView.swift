//
//  CalendarView.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/10/24.
//

import SwiftUI



struct CalendarView: UIViewRepresentable {
   
    let interval: DateInterval
    @ObservedObject var journalStore: JournalStore
    @Binding var dateSelected: DateComponents?
    @Binding var displayEntries: Bool
    func makeUIView(context: Context) -> UICalendarView {
        let view  = UICalendarView()
        view.delegate = context.coordinator
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        let dateSelection = UICalendarSelectionSingleDate(delegate: context.coordinator)
        view.selectionBehavior = dateSelection
        return view
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self, journalStore: _journalStore)
    }
    func updateUIView(_ uiView: UICalendarView, context: Context) {
        
    }

 
    class Coordinator: NSObject, UICalendarViewDelegate, UICalendarSelectionSingleDateDelegate {
        
        var parent: CalendarView
        @ObservedObject var journalStore: JournalStore
        init(parent: CalendarView,journalStore: ObservedObject<JournalStore>){
            self.parent = parent
            self._journalStore = journalStore
        }
        @MainActor
        func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
            let foundEntries = journalStore.entries
                .filter{$0.date.startOfDay == dateComponents.date?.startOfDay}
            if foundEntries.isEmpty {
                return nil
            }
            if foundEntries.count > 1 {
                return .image(UIImage(systemName: "doc.on.doc.fill"),
                              color: .red,
                              size: .large
                )
            }
            let singleEntry = foundEntries.first!
            return .customView {
                let icon = UILabel()
                icon.text = "📌"
                return icon
                
            }
        }
        func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
            parent.dateSelected = dateComponents
            guard let dateComponents else { return }
            let foundEntries = journalStore.entries
                .filter{$0.date.startOfDay == dateComponents.date?.startOfDay}
            if !foundEntries.isEmpty {
                parent.displayEntries.toggle()
            }
        }
        func dateSelection(_ selection: UICalendarSelectionSingleDate, canSelectDate dateComponents: DateComponents?) -> Bool {
                return true
        }
        
       
    }
    
}


