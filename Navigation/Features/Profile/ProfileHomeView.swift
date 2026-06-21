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

#Preview {
    ProfileHomeView()
}
