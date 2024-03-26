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
        ZStack{
            // Background image with opaque view
            
            
            // call component to display form with email and creds
            LoginFormView()
                
        }
    }
}

#Preview {
    LoginView()
}
