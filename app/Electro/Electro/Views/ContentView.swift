//
//  ContentView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

// MARK: - Root ContentView
struct ContentView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel
    var body: some View {
        NavigationStack(path: $navigationVM.path) {
            MasterView()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .account: EntrySelectionView()
                    case .register: RegisterView()
                    case .login: LoginView()
                    case .main: MainView()
                    case .favorite: FavoriteView()
                    case .cart: CartView()
                    case .chat: ChatView()
                    }
                }
        }
    }
}
