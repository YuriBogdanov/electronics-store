//
//  ProductCellView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

// MARK: - Product Cell View
struct ProductCellView: View {
    let product: Product

    var body: some View {
        VStack {
            AsyncImage(url: product.imageUrl) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(height: 150)
                case .success(let image):
                    image.resizable()
                        .scaledToFit()
                        .frame(height: 150)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                @unknown default:
                    EmptyView()
                }
            }
            Text(product.name)
                .font(.headline)
                .lineLimit(1)
            Text(product.priceString)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
    }
}
