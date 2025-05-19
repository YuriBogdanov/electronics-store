//
//  RegisterView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

// MARK: - Register View
struct RegisterView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel
    @StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 16) {
            Text("Регистрация")
                .font(.title2)
                .fontWeight(.semibold)

            TextField("Имя пользователя", text: $authVM.username)
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: $authVM.email)
                .keyboardType(.emailAddress)
                .textFieldStyle(.roundedBorder)

            SecureField("Пароль", text: $authVM.password)
                .textFieldStyle(.roundedBorder)

            Button("Зарегистрироваться") {
                authVM.register {
                    navigationVM.navigate(to: .main)
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

            Spacer()
        }
        .padding()
    }
}
