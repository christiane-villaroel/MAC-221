//
//  JournalList.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI

struct JournalList: View {
    @EnvironmentObject var JournalStore:JournalStore
    @Binding var dateSelected: DateComponents?
    @State var title:String = ""
    @State var text:String = ""
    
    @State var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
       NavigationView {
           List($JournalStore.entries){ $entry in
               NavigationLink(destination: EntryDetails(entry: $entry)) {
                   VStack{
                       Text(entry.title)
                   }//hstack
               }//end Navlink
            }//end List
            .navigationBarTitle("Journal List")
        }
    }
}


#Preview {
    var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents([
            .month, .day,.year
        ], from: Date())
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }
    JournalList(dateSelected: .constant(dateComponents))
        .environmentObject(JournalStore(preview: true))
}
