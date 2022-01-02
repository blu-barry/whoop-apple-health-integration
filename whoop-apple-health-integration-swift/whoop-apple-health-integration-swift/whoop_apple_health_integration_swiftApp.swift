//
//  whoop_apple_health_integration_swiftApp.swift
//  whoop-apple-health-integration-swift
//
//  Created by Michael Barry on 1/2/22.
//

import SwiftUI

@main
struct whoop_apple_health_integration_swiftApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
