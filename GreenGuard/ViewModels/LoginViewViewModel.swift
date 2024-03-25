//
//  LoginViewViewModel.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import Foundation
class LoginViewViewModel : ObservableObject {
    init(){}
    @Published var email : String = ""
    @Published var password: String = ""
    
    func isValid() -> Bool{
                
        return true
    }
}
