//
//  LoginViewViewModel.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import FirebaseAuth
import Foundation
class LoginViewViewModel : ObservableObject {
    init(){}
    @Published var email : String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    
    func login(){
        guard validate() else{
            return
        }
        print("Attempting Login")
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty, !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else{
            errorMessage = "Please fill in all the fields required to login"
            return false
        }
        guard (password.count >= 6) else{
            errorMessage = "Your password does not meet requirements needs to be longer then 6 characters"
            return false
        }
        guard email.contains("@") && email.contains(".") else{
            return false
        }
        
        return true
    }
}
