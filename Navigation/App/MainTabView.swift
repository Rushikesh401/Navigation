//
//  MainTabView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ShopCoordinator()
                .tabItem {
                    Label("Shop", systemImage: "cart")
                }
            
            ProfileCoordinator()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
