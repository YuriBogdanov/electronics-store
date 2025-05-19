//
//  EntrySelectionView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI


// MARK: - Entry Selection View
struct EntrySelectionView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel

    var body: some View {
        VStack(spacing: 500){
            Text("ElectrO")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.cyan)
            VStack(spacing: 20) {
                Text("Добро пожаловать")
                    .font(.title2)
                
                Button("Зарегистрироваться") {
                    navigationVM.navigate(to: .register)
                }
                .buttonStyle(.borderedProminent)
                
                Button("Войти") {
                    navigationVM.navigate(to: .login)
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            .padding()
        }
    }
}
