//
//  RegisterFormView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-26.
//

import SwiftUI

struct RegisterFormView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section("Register Now"){
                        TextField("Enter name", text: $viewModel.name)
                        TextField("Enter email", text: $viewModel.email)
                        SecureField("Enter password", text: $viewModel.password)
                        
                        Button{
                            // action attempt login
                            viewModel.registerAccount()
                        }
                    label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 11)
                                .foregroundColor(.green)
                            Text("Log In")
                                .foregroundColor(.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                        }
                    }
                    }//end of section
                }// end of form
            }// vstack end
        } //end of nav view
    }
}

#Preview {
    RegisterFormView()
}
