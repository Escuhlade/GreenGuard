//
//  MainViewViewModel.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject{
    @Published var currentUserId: String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    // checking to see if the user has changed or not
    init(){
        self.handler = Auth.auth().addStateDidChangeListener(){ [weak self]
            _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool{
        return Auth.auth().currentUser != nil
    }
}
