//
//  SectionView.swift
//  Electro
//
//  Created by Adel Mansurov on 20.05.2025.
//
import SwiftUI

// MARK: - SectionView
struct SectionView: View {
    let title: String
    let products: [Product]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(products) { product in
                        ProductCellView(product: product)
                            .frame(width: 150)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
