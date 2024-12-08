//
//  EntryDetails.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/6/24.
//

import SwiftUI

struct EntryDetails: View {
   
    @Binding var entry:Entry
    @EnvironmentObject var journalStore:JournalStore
    @State var newTitle = ""
    @State var newText = ""
    @State var showEdit = false
    @State var showAlert = false
    @State var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("\(entry.title)")
                        .font(.headline)
                    Text("\(entry.text)")
                    Text("\(entry.date,formatter: dateFormatter)")
                        .foregroundColor(.gray)
                    Button(action:{
                        newTitle = entry.title
                        newText = entry.text
                        showEdit.toggle()
                    }){
                        Text("Edit")
                        Image(systemName: "pencil")
                    }
                }//end Hstack
                    
                
                if showEdit{
                    VStack{
                        TextField(" Enter new Title", text: $newTitle)
                            .padding(8)
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                        TextEditor(text: $newText)
                            .padding(1)
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                            .frame(height: 250)
                        
                        
                        Button(action:{
                            if newTitle.isEmpty{
                                showAlert.toggle()
                            }
                            else {
                                journalStore.editEntry(entry, newTitle: newTitle, newText: newText)
                                showEdit.toggle()
                            }
                        }){
                            Text("Save")
                        }//end button
                    }//end hstack
                    .frame(width: 200)
                }
                    
                    
                
       
                
            }// End VStack
        }//End Nav
        .navigationTitle("Entry Details")
        /*.alert(isPresented:$showAlert){
            Alert(title:Text("No Title Entered"),message: Text("Please enter a title"), dismissButton: .default(Text("OK")))
        }*/
    }//End body
}// End Struct

#Preview {
    @Previewable @State var sampleEntry = Entry(title: "Sample Title", text: "Sample Text",date: Date())
    EntryDetails(entry:$sampleEntry)
        .environmentObject(JournalStore())
}
