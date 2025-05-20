//
//  CitySelectionView.swift
//  Electro
//
//  Created by Adel Mansurov on 20.05.2025.
//
import SwiftUI

// MARK: - CitySelectionView
struct CitySelectionView: View {
    @Binding var selectedCity: String
    @Environment(\.dismiss) private var dismiss
    let cities = ["Казань", "Альметьевск"]

    var body: some View {
        NavigationStack {
            List(cities, id: \.self) { city in
                Button(city) {
                    selectedCity = city
                    dismiss()
                }
            }
            .navigationTitle("Выберите город")
        }
    }
}
