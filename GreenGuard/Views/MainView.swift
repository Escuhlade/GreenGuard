//
//  MainView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        // if user logged in
        if viewModel.isSignedIn == true{
            HomeView()
        }
        else{
            //else user has to be shown login / create user screen
            LoginFormView()
        }
    }
}

#Preview {
    MainView()
}
