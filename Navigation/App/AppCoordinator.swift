//
//  AppCoordinator.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct AppCoordinator: View {
    // Global state to determine which main flow to show
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        Group {
            if isLoggedIn {
                MainTabView()
            } else {
                AuthCoordinator()
            }
        }
    }
}

#Preview {
    AppCoordinator()
}
