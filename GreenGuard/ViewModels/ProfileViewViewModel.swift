//
//  ProfileViewViewModel.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import FirebaseAuth
import Foundation
class ProfileViewViewModel : ObservableObject {
    init(){}
    
    func getUserName() -> String{
        guard let usersname = Auth.auth().currentUser?.displayName else{
            return ""
        }
        
        return usersname
    } //end of getting the current users name
    
    func signout(){
        do{
            try Auth.auth().signOut()
        }
        catch {
            print("signout failed for some reasons check logs...")
        }
    }

}
