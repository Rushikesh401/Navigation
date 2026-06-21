//
//  SettingsView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

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

#Preview {
    SettingsView()
}
