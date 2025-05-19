//
//  NavigationViewModel.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

/// Общий ViewModel для навигации
final class NavigationViewModel: ObservableObject {
    @Published var path: [Route] = []
    func navigate(to route: Route) {
        path.append(route)
    }
}
