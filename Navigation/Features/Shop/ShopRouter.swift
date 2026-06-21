//
//  ShopRouter.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

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
