//
//  AuthCoordinator.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct AuthCoordinator: View {
    @State private var router = AuthRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            LoginView()
                .navigationDestination(for: AuthRoute.self) { route in
                    switch route {
                    case .forgotPassword:
                        Text("Forgot Password View")
                    }
                }
        }
        .environment(router)
    }
}

#Preview {
    AuthCoordinator()
}
