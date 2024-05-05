//
//  TheArchivesApp.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import SwiftUI

@main
struct TheArchivesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
