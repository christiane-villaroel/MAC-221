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
    //@State var entries :[Entry]
    
    @State var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
        NavigationView{
            
            // end if statement
            if let dateSelected {
                let foundEntry = JournalStore.entries.filter{$0.date.startOfDay == dateSelected.date!.startOfDay}
                List{
                    ForEach(foundEntry) { entry in
                        
                        NavigationLink(destination: EntryDetails(entry:.constant(entry))){
                            VStack{
                                Text(entry.title)
                                    
                            }
                        }// end navlink
                    }// end foreach
                }// end list
            }// end if statement
            else{
                Text("No Journal Entries Found")
                    .font(.headline)
                    .foregroundStyle(Color.gray)
            }
        }//end navView
           /* Group{
                if let dateSelected {
                    let foundEntry = JournalStore.entries.filter{$0.date.startOfDay == dateSelected.date!.startOfDay}
                    List{
                        ForEach(foundEntry) { $entry in
                            NavigationLink(destination: EntryDetails(entry:$entry)){
                                VStack{
                                    Text(entry.title)
                                }
                            }
                        }// end foreach
                    }// end list
                }// dateSelect
            }//Group */
            
        }//NavigationView
      /* NavigationView {
           List($JournalStore.entries){ $entry in
               NavigationLink(destination: EntryDetails(entry: $entry)) {
                   VStack{
                       Text(entry.title)
                   }//hstack
               }//end Navlink
            }//end List
            .navigationBarTitle("Journal List")
        }*/
    
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
    JournalList(dateSelected : .constant(dateComponents))
        .environmentObject(JournalStore(preview: true))
}
