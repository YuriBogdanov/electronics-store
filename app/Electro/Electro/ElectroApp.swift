//
//  ElectroApp.swift
//  Electro
//
//  Created by Adel Mansurov on 22.04.2025.
//

import SwiftUI
import SwiftData

// MARK: - App Entry Point
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
