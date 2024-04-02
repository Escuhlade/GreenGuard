//
//  HomeView.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            YourHomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    HomeView()
}
