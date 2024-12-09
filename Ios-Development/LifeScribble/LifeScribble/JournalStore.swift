//
//  JournalEntries.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI

class JournalStore:ObservableObject{
    @Published var entries = [Entry]()
    
    init(){
      
        let calendar = Calendar.current
        entries = [
            Entry(title:"Entry 1",text: "body 1",date: calendar.date(from: DateComponents(year:2024,month:12,day:5))!),
            Entry(title:"Entry 2",text: "body 2",date: calendar.date(from: DateComponents(year:2024,month:12,day:6))!),
            Entry(title:"Entry 3",text: "body 3",date: calendar.date(from: DateComponents(year:2024,month:12,day:7))!),
            Entry(title:"Entry 4", text: "body 4", date: calendar.date(from: DateComponents(year:2024,month:12,day:8))!)
        ]
    }
    func addEntry(_ entry: Entry){
        entries.append(entry)
    }
    func removeEntry(_ entry: Entry){
        if let index = entries.firstIndex(where: {$0.id == entry.id})
        {
            entries.remove(at: index)
        }
        
    }
    func editEntry(_ entry: Entry, newTitle: String, newText: String){
        if let index = entries.firstIndex(where: {$0.id == entry.id})
        {
            entries[index].title = newTitle
            entries[index].text = newText
        }
    }
    
    func editEntryTitle(_ entry: Entry, newTitle: String){
        if let indext = entries.firstIndex(where: {$0.id == entry.id}){
            entries[indext].title = newTitle
        }
    }
    
    func fetchEntries(){
        let calendar = Calendar.current
        entries = [
            Entry(title:"Entry 1",text: "body 1",date: calendar.date(from: DateComponents(year:2024,month:12,day:5))!),
            Entry(title:"Entry 2",text: "body 2",date: calendar.date(from: DateComponents(year:2024,month:12,day:6))!),
            Entry(title:"Entry 3",text: "body 3",date: calendar.date(from: DateComponents(year:2024,month:12,day:7))!),
            Entry(title:"Entry 4", text: "body 4", date: calendar.date(from: DateComponents(year:2024,month:12,day:8))!)
        ]
    }
}
struct Entry: Identifiable {
    var id: UUID = UUID()
    var title: String
    var text: String
    var date: Date
}
