//
//  AuthRouter.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

enum AuthRoute: Hashable {
    case forgotPassword
}

@Observable
final class AuthRouter {
    var path = NavigationPath()
    
    func push(to route: AuthRoute) {
        path.append(route)
    }
}
