//
//  HelloRoisApp.swift
//  HelloRois
//
//  Created by Rois Hoiron on 23/09/26.
//

import SwiftUI
import SwiftData

@main
struct HelloRoisApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            _ = try FileManager.default.url(
                for: .applicationSupportDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: true
            )
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            // ContentView()
            // UIKitWrapper() // from UIKit
            StoryboardWrapper()
        }
        .modelContainer(sharedModelContainer)
    }
}
