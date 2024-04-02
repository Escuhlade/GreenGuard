//
//  ProfileView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import SwiftUI

struct ProfileView: View {
   @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        Text("Signout functionality")
        
        Button {
            viewModel.signout()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .tint(.red)
                    .frame(width: 200, height: 50)
                Spacer()
                Text("Sign Out")
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ProfileView()
}
