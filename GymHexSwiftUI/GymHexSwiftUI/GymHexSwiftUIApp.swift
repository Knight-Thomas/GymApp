//
//  GymHexSwiftUIApp.swift
//  GymHexSwiftUI
//
//  Created by Tom Knight on 20/05/2024.
//


import SwiftUI
import SwiftData

@main
struct GymHexSwiftUIApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            GymHexMainAppView() // Use MainAppView as the entry point
        }
        .modelContainer(sharedModelContainer)
    }
}
