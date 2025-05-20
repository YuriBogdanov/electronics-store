//
//  MasterView.swift
//  Electro
//
//  Created by Adel Mansurov on 20.05.2025.
//
import SwiftUI

// MARK: - MasterView
struct MasterView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel
    @StateObject private var vm = MasterViewModel()
    @State private var showCitySheet = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // Заголовок с выбором города и чатом
                HStack {
                    Button(action: { showCitySheet = true }) {
                        HStack { Image(systemName: "mappin.and.ellipse"); Text(vm.selectedCity) }
                    }
                    Spacer()
                    Button(action: { navigationVM.navigate(to: .chat) }) {
                        Image(systemName: "message").font(.title2)
                    }
                }
                .padding(.horizontal)
                .sheet(isPresented: $showCitySheet) {
                    CitySelectionView(selectedCity: $vm.selectedCity)
                }

                // Поиск
                TextField("Поиск...", text: $vm.searchText)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                // Навигационные кнопки
                VStack(spacing: 4) {
                    Button("Каталог") { navigationVM.navigate(to: .main) }
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Button("Личный кабинет") { navigationVM.navigate(to: .account) }
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Button("Избранное") { navigationVM.navigate(to: .favorite) }
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Button("Корзина") { navigationVM.navigate(to: .cart) }
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                // Разделы горизонтальной прокрутки
                SectionView(title: "Товары дня", products: vm.todayProducts)
                SectionView(title: "Рекомендуем", products: vm.recommendedProducts)
                SectionView(title: "Акции", products: vm.saleProducts)
            }
            .padding(.top)
        }
    }
}
