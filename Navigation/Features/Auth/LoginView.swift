//
//  LoginView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct LoginView: View {
    @Environment(AuthRouter.self) private var router
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Welcome to the App")
                .font(.largeTitle)
                .bold()
            
            Button {
                isLoggedIn = true
            } label: {
                Text("Log In")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Button("Forgot Password?") {
                router.push(to: .forgotPassword)
            }
        }
        .navigationTitle("Login")
    }
}

#Preview {
    LoginView()
}
