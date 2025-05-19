//
//  LoginView.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

// MARK: - Login View
struct LoginView: View {
    @EnvironmentObject private var navigationVM: NavigationViewModel
    @StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 16) {
            Text("Вход")
                .font(.title2)
                .fontWeight(.semibold)

            TextField("Email", text: $authVM.email)
                .keyboardType(.emailAddress)
                .textFieldStyle(.roundedBorder)

            SecureField("Пароль", text: $authVM.password)
                .textFieldStyle(.roundedBorder)

            Button("Войти") {
                authVM.login {
                    navigationVM.navigate(to: .main)
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)

            Spacer()
        }
        .padding()
    }
}
