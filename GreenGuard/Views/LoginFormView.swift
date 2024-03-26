//
//  LoginFormView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-26.
//

import SwiftUI

struct LoginFormView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            ZStack{
                
                VStack{
                    ZStack{
                        // header view
                        
                        
                        //              login form
                        if !viewModel.errorMessage.isEmpty{
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                        Form{
                            
                            Section("Login"){
                                TextField("Email Address", text: $viewModel.email)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                                SecureField("Password", text: $viewModel.password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                Button{
                                    // action attempt login
                                    viewModel.login()
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
                                
                                NavigationLink {
                                    ForgotPasswordView()
                                } label: {
                                    Text("Forgot password?")
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                }
                                
                                
                            }
                        }// end of form
                    }
                    //            create account
                    VStack{
                        Text("New Around Here?")
                        //show registration
                        NavigationLink("Create an Account") {
                            RegisterView()
                        }
                        
                    }
                    .padding(.bottom,50)
                    Spacer()
                } //end of main vstack
            }
        }
    }
}

#Preview {
    LoginFormView()
}
