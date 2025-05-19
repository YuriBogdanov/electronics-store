//
//  ContentView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel

    var body: some View {
        NavigationStack(path: $navigationVM.path) {
            EntrySelectionView()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .register: RegisterView()
                    case .login: LoginView()
                    case .main: MainView()
                    }
                }
        }
    }
}
