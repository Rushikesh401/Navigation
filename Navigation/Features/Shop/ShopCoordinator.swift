//
//  ShopCoordinator.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct ShopCoordinator: View {
    @State private var router = ShopRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ShopHomeView()
                .navigationDestination(for: ShopRoute.self) { route in
                    switch route {
                    case .productDetail(let id):
                        ProductDetailView(productId: id)
                    case .checkout:
                        CheckoutView()
                    }
                }
        }
        .environment(router)
    }
}

enum ShopRoute: Hashable {
    case productDetail(id: String)
    case checkout
}

@Observable
final class ShopRouter {
    var path = NavigationPath()
    
    func push(to route: ShopRoute) {
        path.append(route)
    }
    
    func popToRoot() {
        path = NavigationPath()
    }
}

