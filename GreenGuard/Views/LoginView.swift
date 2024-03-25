//
//  LoginView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import SwiftUI
import FirebaseAuth
struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        Form{
            Section("Login"){
                TextField("Enter Email", text: $viewModel.email)
                SecureField("Enter password", text: $viewModel.password)
                Button {
                    // execute login
                }label: {
                    Text("Log in")
                        .tint(.blue)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
