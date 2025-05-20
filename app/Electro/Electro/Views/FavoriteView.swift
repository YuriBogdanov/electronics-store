//
//  FavoriteView.swift
//  Electro
//
//  Created by Adel Mansurov on 20.05.2025.
//
import SwiftUI

// MARK: - Placeholder Views
struct FavoriteView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Избранное")
                .font(.largeTitle)
        }
        
    }
}

struct CartView: View {
    var body: some View { Text("Корзина").font(.largeTitle) }
}

struct ChatView: View {
    var body: some View { Text("Чат со службой поддержки").font(.largeTitle) }
}
