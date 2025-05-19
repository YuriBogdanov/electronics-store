//
//  MainView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI



// MARK: - Main (Catalog) View
struct MainView: View {
    @StateObject private var productVM = ProductListViewModel()
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Каталог товаров")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)

            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(productVM.products) { product in
                        ProductCellView(product: product)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}


