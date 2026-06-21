//
//  ProfileHomeView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct ProfileHomeView: View {
    @Environment(ProfileRouter.self) private var router
    
    var body: some View {
        VStack(spacing: 20) {
            Text("User Profile")
                .font(.title)
            
            Button("Open Settings") {
                router.push(to: .settings)
            }
            .buttonStyle(.bordered)
        }
        .navigationTitle("Profile")
    }
}

struct SettingsView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = true
    
    var body: some View {
        VStack {
            Text("Settings")
            
            Button("Log Out", role: .destructive) {
                isLoggedIn = false
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .navigationTitle("Settings")
    }
}
