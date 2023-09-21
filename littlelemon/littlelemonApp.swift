//
//  littlelemonApp.swift
//  littlelemon
//
//  Created by Georgios Zervos on 21/9/23.
//

import SwiftUI

@main
struct littlelemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
