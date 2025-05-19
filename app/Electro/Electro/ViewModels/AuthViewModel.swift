//
//  AuthViewModel.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

final class AuthViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    func register(completion: () -> Void) {
        // TODO: логика регистрации
        completion()
    }

    func login(completion: () -> Void) {
        // TODO: логика входа
        completion()
    }
}
