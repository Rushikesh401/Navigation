//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct ProfileCoordinator: View {
    @State private var router = ProfileRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ProfileHomeView()
                .navigationDestination(for: ProfileRoute.self) { route in
                    switch route {
                    case .settings:
                        SettingsView()
                    }
                }
        }
        .environment(router)
    }
}


#Preview {
    ProfileCoordinator()
}
