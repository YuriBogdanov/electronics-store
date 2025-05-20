//
//  MasterViewModel.swift
//  Electro
//
//  Created by Adel Mansurov on 20.05.2025.
//

import SwiftUI

/// Данные для MasterView
final class MasterViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var selectedCity = "Казань"
    let todayProducts = Product.sampleApple
    let recommendedProducts = Product.sampleApple
    let saleProducts = Product.sampleApple
}
