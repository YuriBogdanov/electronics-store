//
//  ElectroApp.swift
//  Electro
//
//  Created by Adel Mansurov on 22.04.2025.
//

import SwiftUI
import SwiftData
//
//@main
//struct ElectroApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()
//
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//        .modelContainer(sharedModelContainer)
//    }
//}

@main
struct ElectroShopApp: App {
    @StateObject private var navigationVM = NavigationViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationVM)
        }
    }
}
