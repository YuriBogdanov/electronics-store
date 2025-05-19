//
//  ProductListViewModel.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

/// Загрузка списка продуктов из сети
final class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = []
    private let urlString = "http://178.208.66.86:5000/products"

    init() {
        Task { await loadProducts() }
    }

    @MainActor
    private func loadProducts() async {
        guard let url = URL(string: urlString) else { return }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode([Product].self, from: data)
            products = decoded
        } catch {
            print("Failed to load products: \(error)")
        }
    }
}
