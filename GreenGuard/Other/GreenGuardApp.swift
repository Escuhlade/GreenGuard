//
//  GreenGuardApp.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//
import FirebaseCore
import SwiftUI

@main
struct GreenGuardApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
