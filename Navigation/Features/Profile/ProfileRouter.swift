//
//  ProfileRouter.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

enum ProfileRoute: Hashable {
    case settings
}

@Observable
final class ProfileRouter {
    var path = NavigationPath()
    
    func push(to route: ProfileRoute) {
        path.append(route)
    }
}
