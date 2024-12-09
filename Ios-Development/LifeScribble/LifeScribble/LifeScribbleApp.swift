//
//  LifeScribbleApp.swift
//  LifeScribble
//
//  Created by Christiane Villaroel on 12/5/24.
//

import SwiftUI

@main
struct LifeScribbleApp: App {
    @StateObject var journalStore = JournalStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(journalStore)
        }
    }
}
